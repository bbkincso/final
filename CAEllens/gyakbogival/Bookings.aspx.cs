using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Bookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindDataToBookingsGridView();
    }

    public void BindDataToBookingsGridView()
    {
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            try
            {
                dbConnection.Open();
                SqlCommand command = new SqlCommand("SELECT Bookings.BookingID, Customer.Name, Customer.Email, Rooms.RoomName, Bookings.Adults, Bookings.Children, Bookings.BookingDate FROM Bookings JOIN Customer ON Bookings.CustomerID = Customer.CustomerID JOIN Rooms ON Bookings.RoomID=Rooms.RoomID", dbConnection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    gvBookings.DataSource = dataSet;
                    gvBookings.DataBind();
                }
            }
            catch (SqlException ex)
            {
                ltError.Text = "Error: " + ex.Message;
            }
            finally
            {
                dbConnection.Close();
            }
        }

    }

    protected void gvBookings_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ltError.Text = string.Empty;
        GridViewRow gvRow = (GridViewRow)gvBookings.Rows[e.RowIndex];
        HiddenField hdnBookingID = (HiddenField)gvRow.FindControl("hdnBookingID");

        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            try
            {
                dbConnection.Open();
                string sql = string.Format("DELETE FROM Bookings WHERE BookingID={0}", hdnBookingID.Value);
                SqlCommand command = new SqlCommand(sql, dbConnection);
                command.ExecuteNonQuery();
                gvBookings.EditIndex = -1;
                BindDataToBookingsGridView();
            }
            catch (Exception ex)
            {
                ltError.Text = ex.Message;
            }
            finally
            {
                dbConnection.Close();
                dbConnection.Dispose();
            }
        }
    }

    protected void btnAdminLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("login.aspx");
    }

}