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
    public partial class EditProduct : System.Web.UI.Page
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
            string sel = "select * from ProductTable";
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
            int i = e.RowIndex;

            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtCategoryId = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox txtProductName = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtProductPrice = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            FileUpload fu = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");

            string path = "";

            if (fu != null && fu.HasFile)
            {
                path = "~/ProductImages/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            else
            {
                SqlCommand cmd1 = new SqlCommand("select ProductImage from ProductTable where ProductId=" + id, con);

                con.Open();
                path = cmd1.ExecuteScalar().ToString();
                con.Close();
            }
            TextBox txtProductDescription = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            TextBox txtProductStatus = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            TextBox txtProductStock = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];

            string qry = "UPDATE ProductTable SET CategoryId='" + txtCategoryId.Text + "',ProductName='" + txtProductName.Text + "',ProductPrice='" + txtProductPrice.Text + "',ProductImage='" + path + "',ProductDescription='" + txtProductDescription.Text + "',ProductStock='" + txtProductStock.Text + "',ProductStatus='" + txtProductStatus.Text + "' WHERE ProductId=" + id;

            SqlCommand cmd = new SqlCommand(qry, con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            BindGrid();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            string del = "delete from ProductTable where ProductId=" + id;

            SqlCommand cmd = new SqlCommand(del, con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            BindGrid();
        }
    }
}