
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace WebApplicationProject1
{
    public partial class FeedbackReply : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();

        SqlConnection con = new SqlConnection(
            @"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string reviewid = Session["reviewid"].ToString();

                string str = "select UserRegistrationTable.userName, UserRegistrationTable.userEmail " +
                             "from ReviewTable inner join UserRegistrationTable " +
                             "on ReviewTable.UseId = UserRegistrationTable.UserID " +
                             "where ReviewTable.ReviewID=" + reviewid;

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    TextBox1.Text = dr["userName"].ToString();
                    TextBox2.Text = dr["userEmail"].ToString();
                }

                con.Close();
            }
        }


        // Email sending method
        public static void SendEmail(
            string yourName,
            string yourGmailUserName,
            string yourGmailPassword,
            string toName,
            string toEmail,
            string subject,
            string body)
        {
            string to = toEmail;
            string from = yourGmailUserName;

            MailMessage message = new MailMessage(from, to);

            string mailbody = body;

            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

            System.Net.NetworkCredential basicCredential1 =
                new System.Net.NetworkCredential(
                    yourGmailUserName,
                    yourGmailPassword);

            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;

            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string reviewid = Session["reviewid"].ToString();

            string reply = TextBox3.Text;

            string email = TextBox2.Text;
            string name = TextBox1.Text;


            // Update reply in ReviewTable
            string str = "update ReviewTable set ReviewReplyMessage='" + reply +
                         "', ReviewStatus='Replied' where ReviewID=" + reviewid;

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();


            // Email subject
            string subject = "Reply to your feedback";


            // Email body
            string body = "Dear " + name + ",<br/><br/>" +
                          "Thank you for your feedback.<br/><br/>" +
                          "Admin Reply:<br/>" +
                          reply + "<br/><br/>" +
                          "Thank you,<br/>" +
                          "Admin";


            // Send email
            SendEmail(
                "Admin",
                "zamrinwork@gmail.com",
                "mqdebuemqrhzielg",
                name,
                email,
                subject,
                body
            );


            // Success message
            Label5.Visible = true;
            Label5.Text = "Replied successfully";
        }
    }
}




































//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data;
//using System.Data.SqlClient;


//namespace WebApplicationProject1
//{
//    public partial class FeedbackReply : System.Web.UI.Page
//    {

//        ConnectionClass clsobj = new ConnectionClass();
//        SqlConnection con = new SqlConnection(@"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                string uid = Session["uid"].ToString();

//                string str = "select userEmail, userName from UserRegistrationTable where UserID=" + uid;

//                SqlCommand cmd = new SqlCommand(str, con);

//                con.Open();

//                SqlDataReader dr = cmd.ExecuteReader();

//                if (dr.Read())
//                {
//                    TextBox1.Text = dr["userName"].ToString();
//                    TextBox2.Text = dr["userEmail"].ToString();
//                }

//                con.Close();
//            }
//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            string reviewid = Session["reviewid"].ToString();

//            string reply = TextBox3.Text;

//            string str = "update ReviewTable set ReviewReplyMessage='" + reply + "', ReviewStatus='Replied' where ReviewID=" + reviewid;

//            SqlCommand cmd = new SqlCommand(str, con);

//            con.Open();

//            cmd.ExecuteNonQuery();

//            con.Close();

//            Label5.Visible = true;
//            Label5.Text = "Replied successfully";

          

//        }
//    }
//}