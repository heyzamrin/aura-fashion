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
    public partial class EditCategory : System.Web.UI.Page
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
            string sel = "select * from CategoryTable";
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

           
            TextBox txtCategoryName = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtStatus = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtDescription = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];


            string qry = "UPDATE CategoryTable SET CategoryName='" + txtCategoryName.Text + "', CategoryStatus='" + txtStatus.Text + "', CategoryDescription='" + txtDescription.Text + "' WHERE CategoryId=" + id;

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
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            string del = "delete from CategoryTable where CategoryId=" + getid + "";
            SqlCommand cmd = new SqlCommand(del, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            BindGrid();
        }

        
    }
}