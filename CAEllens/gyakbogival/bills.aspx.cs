using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using System.Data;

public partial class messages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowXMLFileData();
        }
    }

    protected void btnAdminLogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("login.aspx");
    }

    private void ShowXMLFileData()
    {
        using (DataSet ds = new DataSet())
        {
            ds.ReadXml(Server.MapPath("~/bills.xml"));

            if (ds.Tables.Count > 0)
            {
                gvBillsInfo.DataSource = ds.Tables[0];
                gvBillsInfo.DataBind();
            }
        }
    }

    protected void gvBillsInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataSet ds = new DataSet();

        ds.ReadXml(Server.MapPath("~/bills.xml"));

        ds.Tables[0].Rows.RemoveAt(e.RowIndex);

        ds.WriteXml(Server.MapPath("~/bills.xml"));

        ShowXMLFileData();
    }
}