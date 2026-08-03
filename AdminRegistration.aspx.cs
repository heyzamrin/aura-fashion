using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProject1
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into AdminRegistrationTable(AdminName,AdminEmail) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            int i = clsobj.Fn_Nonquery(ins);

            string regid = clsobj.Fn_Scalar("select max(AdminId) from AdminRegistrationTable");

            string log = "insert into LoginTable(RegistrationId,UserName,Password,LogType) values (" + regid + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','Admin')";
            int j = clsobj.Fn_Nonquery(log);

            if (i == 1 && j == 1)
            {
                Label5.Visible = true;
                Label5.Text = "Registered Successfully";
            }

            //string sel = "select max(RegistrationId) from LoginTable";
            //string marregid = clsobj.Fn_Scalar(sel);
            //int reg_id = 0;
            //if (marregid == "")
            //{
            //    reg_id = 1;
            //}
            //else
            //{
            //    int newrwgid = Convert.ToInt32(marregid);
            //    reg_id = newrwgid + 1;
            //}
            //string ins = "insert into AdminRegistrationTable(AdminName,AdminEmail) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            //int i = clsobj.Fn_Nonquery(ins);
            //if (i == 1)
            //{
            //    string inslog = "insert into LoginTable(RegistrationId,UserName,Password,LogType)  values(" + reg_id + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','Admin')";
            //    int j = clsobj.Fn_Nonquery(inslog);
            //    if (i == 1 && j == 1)
            //    {
            //        Label1.Text = "Sucessfully Registered";
            //    }
            //    else
            //    {
            //        Label1.Text = "Invalid Entry";
            //    }

            //}
        }
    }
}