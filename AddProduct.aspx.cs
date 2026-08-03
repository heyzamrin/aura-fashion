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
    public partial class AddProduct : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Categoryload();
                GridView1.Visible = false;
            }
        }
        public void Categoryload()
        {
            string sel = "select CategoryId, CategoryName from CategoryTable";
            DataSet ds = clsobj.Fn_Adapter_DataSet(sel);

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "CategoryName";
            DropDownList1.DataValueField = "CategoryId";
            DropDownList1.DataBind();

            DropDownList1.Items.Insert(0, "Select Category");
        }

        public void ProductLoad()
        {
            string sel = "select * from ProductTable where ProductId=(select max(ProductId) from ProductTable)";
            DataSet ds = clsobj.Fn_Adapter_DataSet(sel);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/ProductImages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));

            string ins = "insert into ProductTable(CategoryId,ProductName,ProductPrice,ProductImage,ProductDescription,ProductStock,ProductStatus) values(" + DropDownList1.SelectedValue + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + path + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + DropDownList2.SelectedItem.Text + "')";
            Label2.Visible = true;
            Label2.Text = ins;
            int i = clsobj.Fn_Nonquery(ins);

            if (i == 1)
            {
                Label2.Visible = true;
                Label2.Text = "Product Added Successfully";

                GridView1.Visible = true;
                ProductLoad();
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Insertion Failed";
            }

            
        }
    }
}