using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin : System.Web.UI.Page
{
    SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info=False;User ID = bbkincso; Password=Gordonka1;");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            if (!Page.IsPostBack)
                BindDataToGridView();

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    public void BindDataToGridView()
    {
        try
        {
            dbConnection.Open();
            SqlCommand command = new SqlCommand("SELECT CustomerID, Name, Email, Phone, Address, Password FROM Customer", dbConnection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                gvCustomers.DataSource = dataSet;
                gvCustomers.DataBind();
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

    protected void btnAdminLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("login.aspx");
    }



}
