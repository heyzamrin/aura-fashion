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
    public partial class AddCategory : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into CategoryTable(CategoryName,CategoryImage,CategoryStatus,CategoryDescription) values ('" + TextBox1.Text + "','" + p + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "')";
            int i = clsobj.Fn_Nonquery(ins);

            if (i == 1)
            {
                Label6.Visible = true;
                Label6.Text = "Inserted";
            }
            }
    }
}