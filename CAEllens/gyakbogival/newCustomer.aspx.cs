using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class newCustomer : System.Web.UI.Page
{
    HashCode hc = new HashCode();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdminLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("login.aspx");
    }

    protected void btnnewCust_Click(object sender, EventArgs e)
    {
        string name = txtnewCustName.Text;
        string email = txtnewCustEmail.Text;
        string phone = txtnewCustPhone.Text;
        string address =txtnewCustAddress.Text;
        string password = txtnewPassword.Text;
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            dbConnection.Open();
            string checkUser = "select count(*) from Customer where Email='" + txtnewCustEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, dbConnection);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                ltnewCustError.Text=("User already exists");
                dbConnection.Close();
            }
            else
            {
                try
                {
                    
                    SqlCommand command = new SqlCommand("INSERT INTO Customer (Name, Email, Phone, Address, Password) " +
                        "values ('" + name + "','" + email + "','" + phone + "','" + address + "','" + password + "')", dbConnection);
                    command.ExecuteNonQuery();

                    ltnewCustError.Text = "New customer added";

                    txtnewCustName.Text = String.Empty;
                    txtnewCustEmail.Text = String.Empty;
                    txtnewCustPhone.Text = String.Empty;
                    txtnewCustAddress.Text = String.Empty;
                    txtnewPassword.Text = String.Empty;


                }
                catch (Exception ex)
                {
                    ltnewCustError.Text = ex.Message;
                }
                finally
                {
                    dbConnection.Close();
                    dbConnection.Dispose();
                }
            }           
        }
    }

    protected void btnDeleteCustomer_Click(object sender, EventArgs e)
    {
        string emailSearch = txtSearchByEmail.Text; ;
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            try
            {
                dbConnection.Open();
                string sql = string.Format("DELETE FROM Customer WHERE Email='{0}'", emailSearch);
                SqlCommand command = new SqlCommand(sql, dbConnection);
                command.ExecuteNonQuery();
                ltnewCustError.Text = "Customer has been deleted";
                txtnewCustName.Text = String.Empty;
                txtnewCustEmail.Text = String.Empty;
                txtnewCustPhone.Text = String.Empty;
                txtnewCustAddress.Text = String.Empty;
                txtnewPassword.Text = String.Empty;
                txtSearchByEmail.Text = String.Empty;
            }
            catch 
            {
                ltnewCustError.Text = "Customer with a booking cannot be deleted";
            }
            finally
            {
                dbConnection.Close();
                dbConnection.Dispose();
            }
        }
    }

    protected void btnUpdateCustomer_Click(object sender, EventArgs e)
    {
        string emailSearch = txtSearchByEmail.Text;
        string name = txtnewCustName.Text;
        string phone = txtnewCustPhone.Text;
        string address = txtnewCustAddress.Text;
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            try
            {
                dbConnection.Open();
                string sql = string.Format("UPDATE Customer SET Name='{0}', Phone='{1}', Address='{2}'" +
                    " WHERE Email='{3}'", name, phone, address, emailSearch);
                SqlCommand command = new SqlCommand(sql, dbConnection);
                command.ExecuteNonQuery();
                ltnewCustError.Text = "Customer's details has been updated.";
                txtnewCustName.Text = String.Empty;
                txtnewCustEmail.Text = String.Empty;
                txtnewCustPhone.Text = String.Empty;
                txtnewCustAddress.Text = String.Empty;
                txtnewPassword.Text = String.Empty;
                txtSearchByEmail.Text = String.Empty;
            }
            catch (Exception ex)
            {
                ltnewCustError.Text = ex.Message;
            }
            finally
            {
                dbConnection.Close();
                dbConnection.Dispose();
            }
        }
    }

    protected void btnSearchCustomer_Click(object sender, EventArgs e)
    {
        getData(this.User.Identity.Name);
    }
    private void getData(string user)
    {
        DataTable dt = new DataTable();
        using (SqlConnection dbConnection = new SqlConnection("Server=tcp:betti.database.windows.net,1433;Initial Catalog = BettiDarragh; Persist Security Info = False; User ID = bbkincso; Password = Gordonka1; "))
        {
            try
            {
                dbConnection.Open();
                SqlCommand command = new SqlCommand("SELECT Name,Phone,Address FROM Customer WHERE Email = '"+ txtSearchByEmail.Text+"'", dbConnection);
                SqlDataAdapter sqlDa = new SqlDataAdapter(command);

                command.Parameters.AddWithValue("@username", user);
                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    txtnewCustName.Text = dt.Rows[0]["Name"].ToString();
                    txtnewCustPhone.Text = dt.Rows[0]["Phone"].ToString();
                    txtnewCustAddress.Text = dt.Rows[0]["Address"].ToString();
                }
            }
            catch (Exception ex)
            {
                ltnewCustError.Text = ex.Message;
            }
            finally
            {
                dbConnection.Close();
                dbConnection.Dispose();
            }
        }
    }
}