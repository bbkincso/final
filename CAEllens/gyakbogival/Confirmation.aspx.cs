using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Net;
//namespaces required for the auto-text feature
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using Twilio.TwiML;
using Twilio.AspNet.Mvc;


//Confirmation Page

public partial class Confirmation : System.Web.UI.Page
{

    SqlConnection conn;

    private object cmd;
    private object cmd1;


    public SqlConnection SqlConnection { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; ");//Using CA database

        //using Request.QueryString to collecting and displaying the user input from the Rooms page when into textboxes when the page loads
        txtNameCon.Text = Request.QueryString["name"];
        txtEmailCon.Text = Request.QueryString["email"];
        txtAddressCon.Text = Request.QueryString["address"];
        txtPassCon.Text = Request.QueryString["password"];
        txtPhoneCon.Text = Request.QueryString["phone"];
        txtPassCon.Text = Request.QueryString["password"];
        txtRoomCon.Text = Request.QueryString["room"];
        txtRoomIDCon.Text = Request.QueryString["roomid"];
        txtAdultCon.Text = Request.QueryString["adult"];
        txtChildrenCon.Text = Request.QueryString["children"];
        txtInCon.Text = Request.QueryString["checkin"];
        txtOutCon.Text = Request.QueryString["checkout"];

    }

    //Redirects to Booking Page. This is to allow the customer to amend their details
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Rooms.aspx?");
    }



    //Calling Stored Procedure to insert data into Customer & Booking table. 
    protected void btnAddCustomer_Click(object sender, EventArgs e)
    {
        //Read the connection string from Web.Config file
        string ConnectionString = ConfigurationManager.ConnectionStrings["BettiDarraghConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            //Create the SqlCommand object
            SqlCommand cmd = new SqlCommand("spAddBooking", con);
            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Add the input parameters to the command object
            cmd.Parameters.AddWithValue("@Name", txtNameCon.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmailCon.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhoneCon.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddressCon.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassCon.Text);
            cmd.Parameters.AddWithValue("@RoomID", txtRoomIDCon.Text);
            cmd.Parameters.AddWithValue("@Adults", txtAdultCon.Text);
            cmd.Parameters.AddWithValue("@Children", txtChildrenCon.Text);
            cmd.Parameters.AddWithValue("@BookingDate", txtInCon.Text);

            //Add the output parameter to the command object
            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@CustomerID";
            outPutParameter.SqlDbType = System.Data.SqlDbType.Int;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);

            //Open the connection and execute the query
            con.Open();
            cmd.ExecuteNonQuery();

            //Retrieve the value of the output parameter
            string CustomerID = outPutParameter.Value.ToString();
            //Returning the generated CustomerID to a textbox.
            txtCustomerID.Text = CustomerID;

            lblSaveCust.Visible = true;
            lblSaveCust.Text = "Congratulations! Your Booking is Saved!!";
        }

    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        string accountSid = "AC37e4682caeb5b4276971b858eb3d9d55";
        string authToken = "4b56d6779db09955182c13eae01fd830";

        TwilioClient.Init(accountSid, authToken);

        var to = txtPhoneCon.Text; //send to users phone number retrieved from phone textbox on rooms page
        var message = MessageResource.Create(
            to,
            from: new PhoneNumber("+353861802850"),//the phone number the auto text is sent from
            body: "Thank you for Booking with Ellens B&B. We hope you enjoy your stay with us!!");

        Console.WriteLine(message.Sid);
    }
}
