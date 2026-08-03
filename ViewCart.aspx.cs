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
    public partial class ViewCart : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        public void BindGrid()
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            string sel = "SELECT CartTablee.CartId, " +
                         "ProductTable.ProductImage, " +
                         "ProductTable.ProductName, " +
                         "CartTablee.ProductQuantity, " +
                         "CartTablee.ProductSubtotal " +
                         "FROM ProductTable INNER JOIN CartTablee " +
                         "ON ProductTable.ProductId = CartTablee.ProductId " +
                         "WHERE CartTablee.ProductCartStatus= 1 " +
                         "AND CartTablee.UserId=" + Session["uid"];

            GridView1.DataSource = clsobj.Fn_Adapter_DataSet(sel);
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int cartid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            TextBox txtQty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtQty");

            int qty = Convert.ToInt32(txtQty.Text);


            string pricequery = "select ProductTable.ProductPrice from ProductTable inner join CartTablee on ProductTable.ProductId=CartTablee.ProductId where CartId=" + cartid;

            DataSet ds = clsobj.Fn_Adapter_DataSet(pricequery);

            decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["ProductPrice"]);

            decimal subtotal = price * qty;


            string qry = "UPDATE CartTablee SET ProductQuantity=" + qty +
                         ", ProductSubtotal=" + subtotal +
                         " WHERE CartId=" + cartid;


            clsobj.Fn_Nonquery(qry);


            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int cartid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string del = "DELETE FROM CartTablee WHERE CartId=" + cartid;

            clsobj.Fn_Nonquery(del);

            BindGrid();
        }
    }
}