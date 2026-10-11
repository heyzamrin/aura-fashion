
using System;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;

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
                if (Session["reviewid"] == null)
                {
                    Label5.Visible = true;
                    Label5.Text = "Please select feedback before replying.";
                    Button1.Enabled = false;
                    return;
                }

                string reviewid = Session["reviewid"].ToString();

                string query = "select UserRegistrationTable.userName, " +
                               "UserRegistrationTable.userEmail " +
                               "from ReviewTable inner join UserRegistrationTable " +
                               "on ReviewTable.UseId = UserRegistrationTable.UserID " +
                               "where ReviewTable.ReviewID = @ReviewID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ReviewID", reviewid);

                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    TextBox1.Text = dr["userName"].ToString();
                    TextBox2.Text = dr["userEmail"].ToString();
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "Feedback details not found.";
                    Button1.Enabled = false;
                }

                dr.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["reviewid"] == null)
            {
                Label5.Visible = true;
                Label5.Text = "Feedback ID is missing.";
                return;
            }

            string reviewid = Session["reviewid"].ToString();
            string reply = TextBox3.Text.Trim();
            string email = TextBox2.Text.Trim();
            string name = TextBox1.Text.Trim();

            if (reply == "")
            {
                Label5.Visible = true;
                Label5.Text = "Please enter your reply message.";
                return;
            }

            if (email == "")
            {
                Label5.Visible = true;
                Label5.Text = "Customer email address is missing.";
                return;
            }

            try
            {
                string query = "update ReviewTable set " +
                               "ReviewReplyMessage = @Reply, " +
                               "ReviewStatus = 'Replied' " +
                               "where ReviewID = @ReviewID";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Reply", reply);
                cmd.Parameters.AddWithValue("@ReviewID", reviewid);

                con.Open();

                int result = cmd.ExecuteNonQuery();

                con.Close();

                if (result > 0)
                {
                    string subject = "Reply to your feedback";

                    string body = "Dear " +
                                  System.Web.HttpUtility.HtmlEncode(name) +
                                  ",<br/><br/>" +
                                  "Thank you for your feedback.<br/><br/>" +
                                  "<b>Admin Reply:</b><br/>" +
                                  System.Web.HttpUtility.HtmlEncode(reply)
                                  .Replace("\r\n", "<br/>")
                                  .Replace("\n", "<br/>") +
                                  "<br/><br/>Thank you,<br/>Admin";

                    SendEmail(
                        "Store Admin",
                        "zamrin403@gmail.com",
                        "kmbr vtbd ppzw audh",
                        name,
                        email,
                        subject,
                        body
                    );

                    Label5.Visible = true;
                    Label5.Text = "Reply saved and email sent successfully.";

                    Button1.Enabled = false;
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "Feedback was not found. Reply was not saved.";
                }
            }
            catch (Exception)
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }

                Label5.Visible = true;
                Label5.Text = "An error occurred while saving or sending the reply. Check your database and Gmail settings.";
            }
        }

        public static void SendEmail(
            string yourName,
            string yourGmailUserName,
            string yourGmailPassword,
            string toName,
            string toEmail,
            string subject,
            string body)
        {
            using (MailMessage message = new MailMessage())
            {
                message.From = new MailAddress(yourGmailUserName, yourName);
                message.To.Add(new MailAddress(toEmail, toName));
                message.Subject = subject;
                message.Body = body;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;

                using (SmtpClient client = new SmtpClient("smtp.gmail.com", 587))
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential(
                        yourGmailUserName,
                        yourGmailPassword
                    );

                    client.Send(message);
                }
            }
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
//using System.Net.Mail;
//using System.Text;

//namespace WebApplicationProject1
//{
//    public partial class FeedbackReply : System.Web.UI.Page
//    {
//        ConnectionClass clsobj = new ConnectionClass();

//        SqlConnection con = new SqlConnection(
//            @"server=DESKTOP-GNDPCG1\SQLEXPRESS;database=dbProject1;integrated security=true");

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                string reviewid = Session["reviewid"].ToString();

//                string str = "select UserRegistrationTable.userName, UserRegistrationTable.userEmail " +
//                             "from ReviewTable inner join UserRegistrationTable " +
//                             "on ReviewTable.UseId = UserRegistrationTable.UserID " +
//                             "where ReviewTable.ReviewID=" + reviewid;

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


//        // Email sending method
//        public static void SendEmail(
//            string yourName,
//            string yourGmailUserName,
//            string yourGmailPassword,
//            string toName,
//            string toEmail,
//            string subject,
//            string body)
//        {
//            string to = toEmail;
//            string from = yourGmailUserName;

//            MailMessage message = new MailMessage(from, to);

//            string mailbody = body;

//            message.Subject = subject;
//            message.Body = mailbody;
//            message.BodyEncoding = Encoding.UTF8;
//            message.IsBodyHtml = true;

//            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

//            System.Net.NetworkCredential basicCredential1 =
//                new System.Net.NetworkCredential(
//                    yourGmailUserName,
//                    yourGmailPassword);

//            client.EnableSsl = true;
//            client.UseDefaultCredentials = false;
//            client.Credentials = basicCredential1;

//            try
//            {
//                client.Send(message);
//            }
//            catch (Exception ex)
//            {
//                throw;
//            }
//        }


//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            string reviewid = Session["reviewid"].ToString();

//            string reply = TextBox3.Text;

//            string email = TextBox2.Text;
//            string name = TextBox1.Text;


//            // Update reply in ReviewTable
//            string str = "update ReviewTable set ReviewReplyMessage='" + reply +
//                         "', ReviewStatus='Replied' where ReviewID=" + reviewid;

//            SqlCommand cmd = new SqlCommand(str, con);

//            con.Open();

//            cmd.ExecuteNonQuery();

//            con.Close();


//            // Email subject
//            string subject = "Reply to your feedback";


//            // Email body
//            string body = "Dear " + name + ",<br/><br/>" +
//                          "Thank you for your feedback.<br/><br/>" +
//                          "Admin Reply:<br/>" +
//                          reply + "<br/><br/>" +
//                          "Thank you,<br/>" +
//                          "Admin";


//            // Send email
//            SendEmail(
//                "Admin",
//                "zamrinwork@gmail.com",
//                "mqdebuemqrhzielg",
//                name,
//                email,
//                subject,
//                body
//            );


//            // Success message
//            Label5.Visible = true;
//            Label5.Text = "Replied successfully";
//        }
//    }
//}




































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