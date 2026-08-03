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
    public partial class ViewCart1 : System.Web.UI.Page
    {

        ConnectionClass clsobj = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }
        }
       
        public void gridbind()
        {
            string str = "select dbo.CartTablee.CartId, dbo.ProductTable.ProductImage, dbo.ProductTable.ProductName, dbo.ProductTable.ProductPrice, dbo.CartTablee.ProductQuantity, dbo.CartTablee.ProductSubtotal from dbo.ProductTable inner join dbo.CartTablee on dbo.ProductTable.ProductId=dbo.CartTablee.ProductId where dbo.CartTablee.ProductCartStatus=1 and dbo.CartTablee.UserId=" + Session["uid"];

            DataSet ds = clsobj.Fn_Adapter_DataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from CartTablee where CartId=" + id + "";
            clsobj.Fn_Nonquery(del);
            GridView1.EditIndex = -1;
            gridbind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridbind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtqty = (TextBox)GridView1.Rows[i].FindControl("txtqty");
            int qty = Convert.ToInt32(txtqty.Text);
            

            string s = "SELECT dbo.ProductTable.ProductPrice FROM dbo.ProductTable INNER JOIN dbo.CartTablee ON dbo.ProductTable.ProductId = dbo.CartTablee.ProductId where CartId=" + id + "";
            string p = clsobj.Fn_Scalar(s).ToString();
            decimal price = Convert.ToDecimal(p);

            decimal subtotal = price * qty;

            string update = "Update CartTablee set ProductQuantity=" + qty + " , ProductSubTotal=" + subtotal + " where CartId=" + id + "";
            clsobj.Fn_Nonquery(update);
            GridView1.EditIndex = -1;
            gridbind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select ProductId from CartTablee where UserId=" + Session["uid"] + " and ProductCartStatus=1";
            SqlDataReader dr1 = clsobj.Fn_Reader(sel);
            List<int> pidlist = new List<int>();
            while (dr1.Read())
            {
                pidlist.Add(Convert.ToInt32(dr1["ProductId"]));
            }
            dr1.Close();
            foreach (int p in pidlist)
            {
                string s = "select ProductQuantity,ProductSubtotal from CartTablee where ProductId=" + p + " and ProductCartStatus=1";
                SqlDataReader dr2 = clsobj.Fn_Reader(s);

                int q = 0;
                decimal st = 0;
                while (dr2.Read())
                {
                    q = Convert.ToInt32(dr2["ProductQuantity"]);
                    st = Convert.ToDecimal(dr2["ProductSubtotal"]);
                }
                dr2.Close();


                string ins = "insert into OrderTablee values (" + Session["uid"] + "," + p + "," + q + "," + st + ",GETDATE(),'Confirmed')";
                clsobj.Fn_Nonquery(ins);

                string update = "update CartTablee set ProductCartStatus=0 WHERE UserId=" + Session["uid"] + " and ProductId=" + p + " AND ProductCartStatus=1";
                clsobj.Fn_Nonquery(update);

            }
            string sum = "select SUM(Subtotal) from OrderTablee where UserId=" + Session["uid"] + " and OrderStatus='Confirmed'";

            object obj = clsobj.Fn_Scalar(sum);

            decimal grandtotal = Convert.ToDecimal(obj);

            string ins2 = "insert into PaymentTable values(" +Session["uid"] + "," + grandtotal + ",GETDATE())";

            clsobj.Fn_Nonquery(ins2);

            Response.Redirect("AccountPage.aspx");
        }
    }
}

