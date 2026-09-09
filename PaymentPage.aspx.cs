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
    public partial class PaymentPage : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["uid"] == null)
                {
                    Response.Redirect("Login.aspx");
                    return;
                }

                string gtstr = "select GrandTotal from PaymentTable where UserId='" + Session["uid"] + "' and PaymentId=(select max(PaymentId) from PaymentTable where UserId='" + Session["uid"] + "')";
                string gt = clsobj.Fn_Scalar(gtstr);

                if (gt != null)
                {
                    Label16.Text = gt;
                }
                else
                {
                    Label16.Text = "0";
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }
            string accno = TextBox5.Text.Trim();

            string str = "select AccountNumber from AccountTableWCF where AccountNumber='" + accno + "' and UserID='" + Session["uid"] + "'";
            string s = Convert.ToString(clsobj.Fn_Scalar(str));

            if (s == "")
            {
                Label20.Visible = true;
                Label20.Text = "Account not found";
            }
            else
            {
                string gtstr = "select GrandTotal from PaymentTable where UserId='" + Session["uid"] + "' and PaymentId=(select max(PaymentId) from PaymentTable where UserId='" + Session["uid"] + "')";
                string gt = clsobj.Fn_Scalar(gtstr);
                if (gt == null)
                {
                    Label20.Visible = true;
                    Label20.Text = "Payment amount not found";
                    return;
                }

                AccountBalanceService.ServiceClient obj = new AccountBalanceService.ServiceClient();

                string result = obj.updatebal(accno, gt, Session["uid"].ToString());
                Label20.Visible = true;
                Label20.Text = result;

                if (result == "Payment successful")
                {
                    List<int> productList = new List<int>();

                    string q = "select ProductID from OrderTablee where OrderStatus='Confirmed' and UserID='" + Session["uid"] + "'";

                    SqlDataReader dr = clsobj.Fn_Reader(q);

                    while (dr.Read())
                    {
                        productList.Add(Convert.ToInt32(dr["ProductID"]));
                    }
                    Session["PaidProducts"] = productList;
                    dr.Close();

                    foreach (int PID in productList)
                    {
                        string updateOrder = "update OrderTablee set OrderStatus='Paid' where ProductID='" + PID + "' and OrderStatus='Confirmed' and UserID='" + Session["uid"] + "'";

                        clsobj.Fn_Nonquery(updateOrder);

                        string qtystr = "select Quantity from OrderTablee where ProductID='" + PID + "' and UserID='" + Session["uid"] + "' and OrderStatus='Paid'";

                        int quantity = Convert.ToInt32(clsobj.Fn_Scalar(qtystr));

                        string stockstr = "select ProductStock from ProductTable where ProductID='" + PID + "'";

                        int oldstock = Convert.ToInt32(clsobj.Fn_Scalar(stockstr));

                        int newstock = oldstock - quantity;

                        string updatestock = "update ProductTable set ProductStock='" + newstock + "' where ProductID='" + PID + "'";

                        clsobj.Fn_Nonquery(updatestock);
                    }
                    Response.Redirect("PaymentSuccess.aspx");
                }
            }

        }
    
      

       
    }
}