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
    public partial class SingleProduct : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from ProductTable where ProductId='" + Session["pid"] + "' and ProductStatus='Available'";
                DataSet ds = clsobj.Fn_Adapter_DataSet(sel);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }
       

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int prctid = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = prctid;
            Response.Redirect("SingleProduct.aspx");
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["qty"] = DropDownList1.SelectedValue;

            int qty = Convert.ToInt32(Session["qty"]);

            string price = "select ProductPrice from ProductTable where ProductId=" + Session["pid"];
            string p = clsobj.Fn_Scalar(price).ToString();

            decimal subtotal = Convert.ToDecimal(p) * qty;

            string ins = "insert into CartTablee(UserId,ProductId,ProductQuantity,ProductSubtotal,ProductCartStatus) values (" + Session["uid"] + "," + Session["pid"] + "," + qty + "," + subtotal + ",1)";
            clsobj.Fn_Nonquery(ins);

            Response.Redirect("ViewCart1.aspx");
        }

       
    }
}