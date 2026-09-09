using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;

namespace WebApplicationProject1
{
    public partial class Feedback : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pid = Session["pid"].ToString();

            string ins = "insert into ReviewTable values('" + Session["uid"] + "','" + pid + "','" + TextBox1.Text + "','Null','Pending')";

            clsobj.Fn_Nonquery(ins);

            Label15.Visible = true;
            Label15.Text = "Feedback submitted successfully.";
        }
    }
}