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
    public partial class ManageLocation : System.Web.UI.Page
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

            query = "insert into location  values('" + location.Text  + "')";

            s.insert(query);


            Response.Write("<script>alert('  Location Added')</script>");

            location.Text = "";
            
        }
    }
}