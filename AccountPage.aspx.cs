
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProject1
{
    public partial class AccountPage : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["uid"] == null)
                {
                    Response.Redirect("Login.aspx");
                    return;
                }

                string uid = Session["uid"].ToString();

                string s = "select top 1 * from View_2 where userId="
                    + uid + " order by OrderId desc";

                SqlDataReader dr = clsobj.Fn_Reader(s);

                decimal subtotal = 0;

                if (dr != null)
                {
                    if (dr.Read())
                    {
                        Label17.Text = dr["userName"].ToString();
                        Label18.Text = dr["userEmail"].ToString();
                        Label19.Text = dr["userPhone"].ToString();
                        Label20.Text = dr["userAddress"].ToString();

                        Label21.Text = dr["OrderId"].ToString();
                        Label22.Text = Convert.ToDateTime(
                            dr["OrderDate"]).ToString("dd-MM-yyyy");

                        if (dr["Subtotal"] != DBNull.Value)
                        {
                            subtotal = Convert.ToDecimal(dr["Subtotal"]);
                        }

                        Label23.Text = subtotal.ToString("0.00");
                        Label24.Text = "0.00";
                        Label25.Text = "0.00";
                    }

                    dr.Close();
                }

                decimal shipping = 0;
                decimal discount = 0;

                decimal grandTotal = subtotal + shipping - discount;

                Label26.Text = grandTotal.ToString("0.00");

                string g = "select * from View_2 where userId="
                    + uid
                    + " and OrderId=(select max(OrderId) from OrderTablee where UserId="
                    + uid + ")";

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