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
    public partial class login : System.Web.UI.Page
    {

        connection s = new connection();
        public String query;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string em = txtemail.Text;
            string p = txtpassword.Text;
            s.con.Open();
            query = "select * from registration  where email='" + em + "' and password ='" + p + "'";
            SqlCommand cmd = new SqlCommand(query, s.con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["user"] = em;

                Response.Redirect("adminCP.aspx");

            }
            else
            {
                txtError.Text = "Envalid email or password";
                txtemail.Text = "";
                txtpassword.Text = "";
            }
        }
    }
}