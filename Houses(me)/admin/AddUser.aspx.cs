using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Houses_me_.admin
{
    public partial class AddUser : System.Web.UI.Page
    {

        connection s = new connection();
        public String query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome" + Session["user"]);
            }
            else
            {

                Response.Redirect("login.aspx");

            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string em = email.Text;
            string p = password.Text;
            s.con.Open();
            query = "select * from registration  where email='" + em + "' and password ='" + p + "' and super='" + 1 +"'";
            SqlCommand cmd = new SqlCommand(query, s.con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {

                Response.Redirect("rigester.aspx");

            }
            else
            {
                Label1.Text = "Only Super Users can enter this Panel ";
                email.Text = "";
                password.Text = "";
            }
        }
    }
}