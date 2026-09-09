using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplicationProject1
{
    public partial class AddPaymentAccount : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str = "select count(*) from AccountTableWCF where AccountNumber='" + TextBox3.Text + "'";
            string s = clsobj.Fn_Scalar(str);
            int count = Convert.ToInt32(s);
            if (count > 0)
            {
                Label17.Text = "Account already exists";
            }
            else
            {
                string ins = "insert into AccountTableWCF values('" + Session["uid"] + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                int i = clsobj.Fn_Nonquery(ins);

                if (i > 0)
                {
                    Response.Redirect("PaymentPage.aspx");
                }
            }
        }
    }
}