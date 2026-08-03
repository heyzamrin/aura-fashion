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
    public partial class ViewAllProduct : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select * from ProductTable where CategoryId=" + Session["cid"] + " and ProductStatus='Available'";
                DataSet ds = clsobj.Fn_Adapter_DataSet(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {

            int pid = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = pid;
            Response.Redirect("ViewOneProduct.aspx");
        }
    }
}