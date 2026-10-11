
using System;
using System.Data;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProject1
{
    public partial class ViewCart1 : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    gridbind();
                }
            }
        }

        public void gridbind()
        {
            int uid = Convert.ToInt32(Session["uid"]);

            string str = "select dbo.CartTablee.CartId, " +
                "dbo.ProductTable.ProductImage, " +
                "dbo.ProductTable.ProductName, " +
                "dbo.ProductTable.ProductPrice, " +
                "dbo.CartTablee.ProductQuantity, " +
                "dbo.CartTablee.ProductSubtotal " +
                "from dbo.ProductTable inner join dbo.CartTablee " +
                "on dbo.ProductTable.ProductId = dbo.CartTablee.ProductId " +
                "where dbo.CartTablee.ProductCartStatus = 1 " +
                "and dbo.CartTablee.UserId = " + uid;

            DataSet ds = clsobj.Fn_Adapter_DataSet(str);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            decimal grandtotal = 0;

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                grandtotal += Convert.ToDecimal(
                    row["ProductSubtotal"]);
            }

            string totalText = "₹" +
                grandtotal.ToString("N2", CultureInfo.InvariantCulture);

            lblSubtotal.Text = totalText;
            lblCartTotal.Text = totalText;

            if (ds.Tables[0].Rows.Count == 0)
            {
                Button2.Visible = true;
                Label1.Visible = true;
                GridView1.Visible = false;
                Button1.Visible = false;
                pnlOrderSummary.Visible = false;
            }
            else
            {
                Button2.Visible = true;
                Label1.Visible = false;
                GridView1.Visible = true;
                Button1.Visible = true;
                pnlOrderSummary.Visible = true;
            }
        }

        protected void GridView1_RowDeleting(object sender,
            GridViewDeleteEventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            string del = "delete from CartTablee where CartId = " +
                id + " and UserId = " + uid +
                " and ProductCartStatus = 1";

            clsobj.Fn_Nonquery(del);

            GridView1.EditIndex = -1;
            gridbind();
        }

        protected void GridView1_RowEditing(object sender,
            GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridbind();
        }

        protected void GridView1_RowCancelingEdit(object sender,
            GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridbind();
        }

        protected void GridView1_RowUpdating(object sender,
            GridViewUpdateEventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtqty = (TextBox)GridView1.Rows[i]
                .FindControl("txtqty");

            int qty;

            if (int.TryParse(txtqty.Text, out qty) == false || qty <= 0)
            {
                return;
            }

            string s = "select ProductTable.ProductPrice " +
                "from ProductTable inner join CartTablee " +
                "on ProductTable.ProductId = CartTablee.ProductId " +
                "where CartTablee.CartId = " + id +
                " and CartTablee.UserId = " + uid +
                " and CartTablee.ProductCartStatus = 1";

            object priceObj = clsobj.Fn_Scalar(s);

            if (priceObj == null || priceObj == DBNull.Value)
            {
                return;
            }

            decimal price = Convert.ToDecimal(priceObj);
            decimal subtotal = price * qty;

            string subtotalText = subtotal.ToString(
                CultureInfo.InvariantCulture);

            string update = "update CartTablee set " +
                "ProductQuantity = " + qty +
                ", ProductSubtotal = " + subtotalText +
                " where CartId = " + id +
                " and UserId = " + uid +
                " and ProductCartStatus = 1";

            clsobj.Fn_Nonquery(update);

            GridView1.EditIndex = -1;
            gridbind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            string sel = "select CartId, ProductId, ProductQuantity, " +
                "ProductSubtotal from CartTablee " +
                "where UserId = " + uid +
                " and ProductCartStatus = 1";

            DataSet ds = clsobj.Fn_Adapter_DataSet(sel);

            if (ds.Tables[0].Rows.Count == 0)
            {
                gridbind();
                return;
            }

            decimal grandtotal = 0;

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                grandtotal += Convert.ToDecimal(
                    row["ProductSubtotal"]);
            }

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                int cartId = Convert.ToInt32(row["CartId"]);
                int productId = Convert.ToInt32(row["ProductId"]);
                int qty = Convert.ToInt32(row["ProductQuantity"]);
                decimal subtotal = Convert.ToDecimal(
                    row["ProductSubtotal"]);

                string subtotalText = subtotal.ToString(
                    CultureInfo.InvariantCulture);

                string ins = "insert into OrderTablee values (" +
                    uid + "," +
                    productId + "," +
                    qty + "," +
                    subtotalText +
                    ", GETDATE(), 'Confirmed')";

                clsobj.Fn_Nonquery(ins);

                string update = "update CartTablee " +
                    "set ProductCartStatus = 0 " +
                    "where CartId = " + cartId +
                    " and UserId = " + uid +
                    " and ProductCartStatus = 1";

                clsobj.Fn_Nonquery(update);
            }

            string totalText = grandtotal.ToString(
                CultureInfo.InvariantCulture);

            string ins2 = "insert into PaymentTable values (" +
                uid + "," + totalText + ", GETDATE())";

            clsobj.Fn_Nonquery(ins2);

            Response.Redirect("AccountPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllProducts.aspx");
        }
    }
}

