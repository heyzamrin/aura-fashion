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
    
    public partial class PaymentSuccess : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<int> productList = Session["PaidProducts"] as List<int>;

                if (productList != null && productList.Count > 0)
                {
                    string ids = "";

                    foreach (int p in productList)
                    {
                        ids = ids + p + ",";
                    }

                    ids = ids.TrimEnd(',');

                    string q = "select distinct ProductTable.ProductId, ProductTable.ProductName, ProductTable.ProductImage, OrderTablee.OrderStatus from OrderTablee inner join ProductTable on OrderTablee.ProductId=ProductTable.ProductId where OrderTablee.UserID=" + Session["uid"] + " and OrderTablee.OrderStatus='Paid' and OrderTablee.ProductId in (" + ids + ")"; SqlDataReader dr = clsobj.Fn_Reader(q);

                    GridView1.DataSource = dr;
                    GridView1.DataBind();

                    dr.Close();
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Feedback")
            {
                string pid = e.CommandArgument.ToString();

                Response.Redirect("Feedback.aspx?pid=" + pid);
            }
        }
    }
}