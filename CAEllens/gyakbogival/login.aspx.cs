using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
    HashCode hc = new HashCode();
    // userName:Admin
    //password:789
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; ");
         conn.Open();
         string checkUser = "select count(*) from Customer where Name='" + txtLoginName.Text + "'";
         SqlCommand com = new SqlCommand(checkUser, conn);
         int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
         conn.Close();

         if (temp == 1)
         {
             conn.Open();
             string checkPasswordQuery = "select Password from Customer where Name='" + txtLoginName.Text + "'";
             SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
             string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

             if (password == hc.PassHash(txtLoginPassword.Text))
             {
                  Session["New"] = txtLoginName.Text;
                    Response.Redirect("admin.aspx");
       
             }

             else
             {
                ltloginError.Text="User name or password not correct";
             }

         }
         else
         {
            ltloginError.Text = "User name or password not correct";
        }

         conn.Close();
         
    }
}