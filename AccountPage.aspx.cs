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
    public partial class AccountPage : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from View_2 where userId=" + Session["uid"] + "";
                SqlDataReader dr = clsobj.Fn_Reader(s);

                if (dr.Read())
                {
                    
                    Label17.Text = dr["userName"].ToString();
                    Label18.Text = dr["userEmail"].ToString();
                    Label19.Text = dr["userPhone"].ToString();
                    Label20.Text = dr["userAddress"].ToString();

                    
                    Label21.Text = dr["OrderId"].ToString();
                    Label22.Text = Convert.ToDateTime(dr["OrderDate"]).ToString("dd-MM-yyyy");

                   
                    Label23.Text = dr["Subtotal"].ToString();
                    Label24.Text = "0";
                    Label25.Text = "0";
                    Label26.Text = dr["GrandTotal"].ToString();
                }

                dr.Close();

                
                string g = "select * from View_2 where userId=" + Session["uid"] + "";
                DataSet ds = clsobj.Fn_Adapter_DataSet(g);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart1.aspx");
        }
    }
}