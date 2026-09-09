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
    public partial class ViewFeedbackAdmin : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string sel = "select ReviewTable.ReviewID, ReviewTable.UseId, ReviewTable.ProductId, ProductTable.ProductImage, ReviewTable.ReviewMessage, ReviewTable.ReviewStatus from ProductTable inner join ReviewTable on ProductTable.ProductId=ReviewTable.ProductId"; SqlDataAdapter da = new SqlDataAdapter(sel, con);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {

            string reviewid = e.CommandArgument.ToString();

            Session["reviewid"] = reviewid;

            Response.Redirect("FeedbackReply.aspx");

        }
    }
}