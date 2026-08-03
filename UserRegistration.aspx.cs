using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProject1
{
    public partial class Register : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into UserRegistrationTable(userName,userAge,userAddress,userPhone,userEmail,Pincode,userStatus) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','Active')";
            int i = clsobj.Fn_Nonquery(ins);

            string regid = clsobj.Fn_Scalar("select max(UserId) from UserRegistrationTable");

            string log = "insert into LoginTable(RegistrationId,UserName,Password,LogType) values (" + regid + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','User')";
            int j = clsobj.Fn_Nonquery(log);

            if(i == 1 && j == 1)
            {
                Label7.Visible = true;
                Label7.Text = "Registered Successfully";
            }
        }
    }
}