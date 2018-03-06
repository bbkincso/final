using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;//namespaces



//Rooms page

public partial class Default2 : System.Web.UI.Page
{



    SqlConnection conn;
    private object cmd;

    protected DataSet dsBooked;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; ");//Using CA database

        //Javascript for submit button
        ImageButton1.Attributes.Add("onmouseover", "this.src='/img/greenButton.png'");//button changes to green onmouseover
        ImageButton1.Attributes.Add("onmouseout", "this.src='/img/blueButton.png'"); //button changes to blue onmouseout

        ImageButton1.Attributes.Add("onclick", "return confirm('Are you sure you want to proceed to the checkout page?');");//javascript messagebox prompt when green button clicked

    }


    //Calendar
    protected void calCheckin_SelectionChanged(object sender, EventArgs e)
    {
        txtCheckIn.Text = calCheckin.SelectedDate.ToString("dd MMMM, yyyy");//formatting date returned


        if (rdoCheckin.Checked)//if the checkin radiobutton is selected
        {
            txtIn.Text = calCheckin.SelectedDate.Date.ToString("dd MMMM, yyyy");//Label displays selected date

            lblIn.Visible = true;
            lblIn.Text = calCheckin.SelectedDate.DayOfWeek.ToString();//Displays day of week 
        }

        if (rdoCheckout.Checked)//if checkout radiobutton is selected
        {
            txtOut.Text = calCheckin.SelectedDate.Date.ToString("dd MMMM, yyyy");

            lblOut.Visible = true;
            lblOut.Text = calCheckin.SelectedDate.DayOfWeek.ToString();//Displays day of week 
        }



        //making sure the checkout date isnt lower than checkin date
        if (txtIn.Text.Length > 0 && txtOut.Text.Length > 0)
        {
            Date_Check();
        }
    }

    //manual event handler to make sure Checkin date selected isnt after the Checkin date.
    protected void Date_Check()
    {
        //converting the data in the textbox to a datetime datatype
        if (Convert.ToDateTime(txtIn.Text) >
            Convert.ToDateTime(txtOut.Text))
        {
            //Displaying error message if checkin date is after checkout
            lblDateCalc.Text = "ERROR! Checkin Date Cannot Come After the Checkout Date. Please amend your dates.";
            lblDateCalc.Visible = true;
        }
        if (Convert.ToDateTime(txtIn.Text) <
            Convert.ToDateTime(txtOut.Text))

        {
            lblDateCalc.Visible = false;//hiding the error message if user selects correct dates
        }
    }


    //Checking date availability
    //Inner Join used in conjunction with datagridview & sqldatasource to display what dates are booked for particular dates in the database
    protected void Button4_Click1(object sender, EventArgs e)
    {

        //SELECT RoomName, Price, Capacity, BookingDate FROM Rooms INNER JOIN Bookings on Rooms.RoomID = Bookings.RoomID
        dgvCustomer.Visible = true;

    }



    //Getting the Value from Roomd Dropdownlist and displaying it in RoomID textbox
    protected void ddlRoomType_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtRID.Text = ddlRoomType.SelectedItem.Value;
    }



    //DayRender event to Blank out days from other months for better usability. 
    //Admin will manually block out dates that are booked.
    protected void calCheckin_DayRender(object sender, DayRenderEventArgs e)
    {

        if (e.Day.IsOtherMonth || e.Day.Date <= DateTime.Today)
        {
            e.Day.IsSelectable = false;
            e.Cell.Text = "x";
            e.Cell.Font.Bold = true;
            e.Cell.ForeColor = System.Drawing.Color.White;
            e.Cell.BackColor = System.Drawing.Color.Red;
            e.Cell.ToolTip = "Day Unavailable";
        }
        else
        {
            e.Cell.ToolTip = "Available";
        }

        DateTime nextDate;
        if (dsBooked != null)
        {
            foreach (DataRow dr in dsBooked.Tables[0].Rows)
            {

                nextDate = (DateTime)dr["Date"];
                if (e.Day.IsOtherMonth || nextDate == e.Day.Date || e.Day.Date <= DateTime.Today)
                {
                    e.Day.IsSelectable = false;
                    e.Cell.Text = "x";
                    e.Cell.BackColor = System.Drawing.Color.Pink;
                }
            }
        }
    }


    //Submit Button. Using Response.Redirect to redirect to checkout (Confirmation) page. 
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //Details retieved from textboxes below and transferred to the relevant textboxes on Confirmation checkout form
        Response.Redirect("Confirmation.aspx?&name=" + txtName.Text + "&email=" + txtEmail.Text + "&phone=" + txtPhoneNum.Text +
        "&address=" + txtAddressLine1.Text + "&password=" + txtPass.Text + "&room=" + ddlRoomType.SelectedItem.Text +
        "&roomid=" + txtRID.Text + "&adult=" + ddlnumOfAdults.Text + "&children=" + ddlnumOfChildren.Text + "&checkin=" + txtIn.Text +
      "&checkout=" + txtOut.Text);
    }



}