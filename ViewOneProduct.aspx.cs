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
    public partial class ViewOneProduct : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from ProductTable where ProductId= " + Session["pid"] + "";
                SqlDataReader dr = clsobj.Fn_Reader(s);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["ProductImage"].ToString();
                    Label1.Text = dr["ProductName"].ToString();
                    Label2.Text = dr["ProductPrice"].ToString();
                    Label3.Text = dr["ProductDescription"].ToString();

                    int stock = Convert.ToInt32(dr["ProductStock"]);
                    DropDownList1.Items.Clear();

                    for (int i = 1; i <= stock; i++)
                    {
                        DropDownList1.Items.Add(i.ToString());
                    }

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int pid = Convert.ToInt32(Session["pid"]);
            int qty = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            decimal price = Convert.ToDecimal(Label2.Text);
            decimal subtotal = qty * price;

            string ins = "insert into CartTablee values('" + uid + "','" + pid + "','" + qty + "','" + subtotal + "',GETDATE(), 1 )";
            clsobj.Fn_Nonquery(ins);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart1.aspx");
        }
    }
}