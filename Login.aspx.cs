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
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            // Check whether username and password exist
            string str = "select count(RegistrationId) from LoginTable where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";

            string cid = clsobj.Fn_Scalar(str);
            int cid1 = Convert.ToInt32(cid);

            if (cid1 == 1)
            {
                // Get Registration ID
                string str1 = "select RegistrationId from LoginTable where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";

                string regid = clsobj.Fn_Scalar(str1);

                Session["uid"] = regid;

                // Get Login Type
                string str2 = "select LogType from LoginTable where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";

                string logtype = clsobj.Fn_Scalar(str2);

                if (logtype == "Admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if (logtype == "User")
                {
                    Response.Redirect("UserHOME11.aspx");
                }
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid Username or Password";
            }
        }
    }

}