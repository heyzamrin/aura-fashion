using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProject1
{
    public partial class UserDetailsAdmin : System.Web.UI.Page
    {
        ConnectionClass clsobj = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                BindUserDetails();
            }
        }

        private void BindUserDetails()
        {
            string query = @"SELECT
                                L.RegistrationId,
                                U.userName,
                                U.userEmail,
                                L.LoginStatus
                             FROM LoginTable L
                             INNER JOIN UserRegistrationTable U
                             ON L.RegistrationId = U.UserID
                             WHERE L.LogType = 'User'
                             ORDER BY L.RegistrationId DESC";

            DataSet ds = clsobj.Fn_Adapter_DataSet(query);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChangeStatus")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                string userId = GridView1.DataKeys[rowIndex].Value.ToString();

                string statusQuery =
                    "SELECT LoginStatus FROM LoginTable WHERE RegistrationId=" + userId;

                string currentStatus = clsobj.Fn_Scalar(statusQuery);

                string newStatus;

                if (currentStatus == "Active")
                {
                    newStatus = "Blocked";
                }
                else
                {
                    newStatus = "Active";
                }

                string updateQuery =
                    "UPDATE LoginTable SET LoginStatus='" + newStatus +
                    "' WHERE RegistrationId=" + userId +
                    " AND LogType='User'";

                clsobj.Fn_Nonquery(updateQuery);

                if (newStatus == "Blocked")
                {
                    LabelMessage.Text = "User blocked successfully.";
                }
                else
                {
                    LabelMessage.Text = "User unblocked successfully.";
                }

                BindUserDetails();
            }
        }
    }
}