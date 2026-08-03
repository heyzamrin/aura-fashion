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
    public partial class UserHOME11 : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gridbind();
            }
        }
        public void gridbind()
        {
            string s = "select * from CategoryTable";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();

        }

        protected void ImageButton1_Command1(object sender, CommandEventArgs e)
        {
            int catid = Convert.ToInt32(e.CommandArgument);
            Session["cid"] = catid;
            Response.Redirect("ViewAllProducts.aspx");
        }
    }
}