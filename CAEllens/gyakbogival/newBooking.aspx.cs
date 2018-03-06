using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml;



public partial class newBooking : System.Web.UI.Page
{
    
    protected DataSet dsBooked;
    protected DataSet dsBooked2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            if (!Page.IsPostBack)
            calCheckIn.VisibleDate = DateTime.Today;
            FillCalendarDataset();
            calCheckOut.VisibleDate = DateTime.Today;
            FillCalendarDatasetCheckout();

        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void btnAdminLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("login.aspx");
    }

    protected void btnNewBooking_Click(object sender, EventArgs e)
    {
        int customer = int.Parse(txtCustID.Text);
        int RoomType = int.Parse(ddlchooseRoom.SelectedValue);
        int Adults = int.Parse(ddlAdults.SelectedValue);
        int Children = int.Parse(ddlkids.SelectedValue);
        string checkIn = calCheckIn.SelectedDate.Date.ToString("dd MMMM, yyyy");
        string dateOut = calCheckOut.SelectedDate.Date.ToString("dd MMMM, yyyy");

        DateTime checkOut = calCheckOut.SelectedDate;
        DateTime dateIn = Convert.ToDateTime(checkIn);
        TimeSpan difference = checkOut - dateIn;
        int days = difference.Days;
        int discounts = Children * 5 * days;
        string discount = "€" + discounts.ToString();
        string name = string.Empty;
        string roomName = string.Empty;
        string price = string.Empty;

        using (SqlConnection dbConnection1 = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            try
            {
                using (SqlCommand command = new SqlCommand("SELECT RoomName, Price FROM Rooms Where RoomId='"+RoomType+"'", dbConnection1))
                {
                    dbConnection1.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            roomName = reader[0].ToString();
                            price = reader[1].ToString();
                        }
                    }
                }

            }
            catch
            {

            }
            finally
            {
                dbConnection1.Close();
            }
            int newPrice = int.Parse(price) * days - discounts;
            string total = newPrice.ToString();
            using (SqlConnection dbConnection2 = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand("SELECT Name FROM Customer Where CustomerID='"+customer+"'", dbConnection2))
                    {
                        dbConnection2.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                name = reader[0].ToString();

                            }
                        }
                    }

                }
                catch 
                {

                }
                finally
                {
                    dbConnection2.Close();
                }


                saveDataToXml(name, roomName, ddlAdults.SelectedValue, ddlkids.SelectedValue, checkIn, dateOut, discount, total);

                using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
                {
                    try
                    {
                        dbConnection.Open();
                        for (int i = 0; i < days; i++)
                        {
                            SqlCommand command = new SqlCommand("INSERT INTO Bookings (CustomerID, RoomID, Adults, Children, BookingDate) values ('" + customer + "','" + RoomType + "','" + Adults + "','" + Children + "','" + checkIn + "')", dbConnection);
                            command.ExecuteNonQuery();
                            DateTime dateIn1 = Convert.ToDateTime(checkIn).AddDays(1);
                            checkIn = dateIn1.ToString("dd MMMM, yyyy");
                            ltBookingError.Text = "Booking added";
                            txtCustID.Text = String.Empty;
                            ddlAdults.ClearSelection();
                            ddlkids.ClearSelection();
                        }

                    }
                    catch (Exception ex)
                    {
                        ltBookingError.Text = ex.Message;
                    }
                    finally
                    {
                        dbConnection.Close();
                        dbConnection.Dispose();
                    }
                }
            }
        }
    }

    protected void calCheckOut_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime checkIn = calCheckIn.SelectedDate.Date;

        if (e.Day.IsOtherMonth || e.Day.Date <= DateTime.Today || e.Day.Date <= checkIn)
        {
            e.Day.IsSelectable = false;
            e.Cell.Text = "x";
            e.Cell.BackColor = System.Drawing.Color.Pink;
        }
        DateTime nextDate;
        if (dsBooked2 != null)
        {
            foreach (DataRow dr in dsBooked2.Tables[0].Rows)
            {

                nextDate = (DateTime)dr["BookingDate"];
                if (e.Day.IsOtherMonth || nextDate == e.Day.Date || e.Day.Date <= DateTime.Today || e.Day.Date <= checkIn)
                {
                    e.Day.IsSelectable = false;
                    e.Cell.Text = "x";
                    e.Cell.BackColor = System.Drawing.Color.Pink;
                }
            }
        }

    }

    protected void FillCalendarDataset()
    {
        DateTime firstDate = new DateTime(calCheckIn.VisibleDate.Year,
            calCheckIn.VisibleDate.Month, 1);
        DateTime lastDate = GetFirstDayOfNextMonth();
        dsBooked = GetCurrentMonthData(firstDate, lastDate);
    }
    protected void FillCalendarDatasetCheckout()
    {
        DateTime firstDate = new DateTime(calCheckOut.VisibleDate.Year,
            calCheckOut.VisibleDate.Month, 1);
        DateTime lastDate = GetFirstDayOfNextMonthCheckOut();
        dsBooked2 = GetCurrentMonthDataCheckOut(firstDate, lastDate);
    }

    protected DateTime GetFirstDayOfNextMonth()
    {
        int monthNumber, yearNumber;
        if (calCheckIn.VisibleDate.Month == 12)
        {
            monthNumber = 1;
            yearNumber = calCheckIn.VisibleDate.Year + 1;
        }
        else
        {
            monthNumber = calCheckIn.VisibleDate.Month + 1;
            yearNumber = calCheckIn.VisibleDate.Year;
        }
        DateTime lastDate = new DateTime(yearNumber, monthNumber, 1);
        return lastDate;
    }

    protected DateTime GetFirstDayOfNextMonthCheckOut()
    {
        int monthNumber, yearNumber;
        if (calCheckOut.VisibleDate.Month == 12)
        {
            monthNumber = 1;
            yearNumber = calCheckOut.VisibleDate.Year + 1;
        }
        else
        {
            monthNumber = calCheckOut.VisibleDate.Month + 1;
            yearNumber = calCheckOut.VisibleDate.Year;
        }
        DateTime lastDate = new DateTime(yearNumber, monthNumber, 1);
        return lastDate;
    }

    public DataSet GetCurrentMonthData(DateTime firstDate,
         DateTime lastDate)
    {
        DataSet dsMonth = new DataSet();
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            dbConnection.Open();
            String query;
            int roomID = int.Parse(ddlchooseRoom.SelectedValue);
            query = "SELECT BookingDate FROM Bookings Where RoomId='" + roomID + "'" +
                " AND BookingDate >= @firstDate AND BookingDate < @lastDate ";
            SqlCommand dbCommand = new SqlCommand(query, dbConnection);
            dbCommand.Parameters.Add(new SqlParameter("@firstDate",
                firstDate));
            dbCommand.Parameters.Add(new SqlParameter("@lastDate", lastDate));

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(dbCommand);
            try
            {
                sqlDataAdapter.Fill(dsMonth);
                dbConnection.Close();


            }
            catch { }
            return dsMonth;
        }

    }
    public DataSet GetCurrentMonthDataCheckOut(DateTime firstDate,
        DateTime lastDate)
    {
        DataSet dsMonth = new DataSet();
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            dbConnection.Open();
            String query;
            int roomID = int.Parse(ddlchooseRoom.SelectedValue);
            query = "SELECT BookingDate FROM Bookings Where RoomId='" + roomID + "'" +
                " AND BookingDate >= @firstDate AND BookingDate < @lastDate ";
            SqlCommand dbCommand = new SqlCommand(query, dbConnection);
            dbCommand.Parameters.Add(new SqlParameter("@firstDate",
                firstDate));
            dbCommand.Parameters.Add(new SqlParameter("@lastDate", lastDate));

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(dbCommand);
            try
            {
                sqlDataAdapter.Fill(dsMonth);
                dbConnection.Close();


            }
            catch { }
            return dsMonth;
        }

    }

    protected void calCheckIn_DayRender(object sender, DayRenderEventArgs e)
    {
            
        if (e.Day.IsOtherMonth || e.Day.Date <= DateTime.Today)
        {
            e.Day.IsSelectable = false;
            e.Cell.Text = "x";
            e.Cell.BackColor = System.Drawing.Color.Pink;
        }
        DateTime nextDate;
        if (dsBooked != null)
        {
            foreach (DataRow dr in dsBooked.Tables[0].Rows)
            {

                nextDate = (DateTime)dr["BookingDate"];////////////////////
                if (e.Day.IsOtherMonth || nextDate == e.Day.Date || e.Day.Date <= DateTime.Today)
                {
                    e.Day.IsSelectable = false;
                    e.Cell.Text = "x";
                    e.Cell.BackColor = System.Drawing.Color.Pink;
                }
            }
        }
    }
    protected void Calendar1_VisibleMonthChanged(object sender,
        MonthChangedEventArgs e)
    {

        FillCalendarDataset();
    }
    protected void Calendar2_VisibleMonthChanged(object sender,
        MonthChangedEventArgs e)
    {

        FillCalendarDatasetCheckout();
    }

    public void ddlchooseRoom_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        FillCalendarDataset();
        FillCalendarDatasetCheckout();
    }


    protected void calCheckIn_SelectionChanged(object sender, EventArgs e)
    {
        FillCalendarDatasetCheckout();
    }

    public void saveDataToXml(string name,string room, string adults, string children, 
        string checkIn, string checkOut, string discount, string price)
    {

        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("bills.xml"));
        XmlElement parentelement = xmldoc.CreateElement("Bills");

        XmlElement Name = xmldoc.CreateElement("Name");
        Name.InnerText = name;
        XmlElement Room = xmldoc.CreateElement("Room");
        Room.InnerText = room;
        XmlElement Adults = xmldoc.CreateElement("Adults");
        Adults.InnerText = adults;
        XmlElement Children = xmldoc.CreateElement("Children");
        Children.InnerText = children;
        XmlElement CheckIn = xmldoc.CreateElement("CheckIn");
        CheckIn.InnerText = checkIn;
        XmlElement CheckOut = xmldoc.CreateElement("CheckOut");
        CheckOut.InnerText = checkOut;
        XmlElement Discount = xmldoc.CreateElement("Discount");
        Discount.InnerText = discount;
        XmlElement Price = xmldoc.CreateElement("Price");
        Price.InnerText = price;

        parentelement.AppendChild(Name);
        parentelement.AppendChild(Room);
        parentelement.AppendChild(Adults);
        parentelement.AppendChild(Children);
        parentelement.AppendChild(CheckIn);
        parentelement.AppendChild(CheckOut);
        parentelement.AppendChild(Discount);
        parentelement.AppendChild(Price);
        xmldoc.DocumentElement.AppendChild(parentelement);

        xmldoc.Save(Server.MapPath("bills.xml"));
    }
}
