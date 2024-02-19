using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Houses_me_.admin
{
    public partial class rigester : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {

            query = "insert into registration values('" + txtName.Text + "','" + txtEm.Text + "','" + txtPs.Text + "','" + txtSuper.Text + "')";

            s.insert(query);

            Response.Write("<script>alert('user is added Successfully')</script>");

            txtName.Text = "";
            txtEm.Text = "";
            txtPs.Text = "";
            txtSuper.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}