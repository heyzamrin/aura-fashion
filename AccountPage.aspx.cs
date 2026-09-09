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
                string s = "select top 1 * from View_2 where userId=" + Session["uid"] + " order by OrderId desc";

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
                   
                }

                dr.Close();
                decimal subtotal = Convert.ToDecimal(Label23.Text);
                decimal shipping = 0;
                decimal discount = 0;

                decimal grandTotal = subtotal + shipping - discount;

                Label26.Text = grandTotal.ToString();

                string g = "select * from View_2 where userId=" + Session["uid"] + " and OrderId=(select max(OrderId) from OrderTablee where UserId=" + Session["uid"] + ")";

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