using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.IO;


namespace Houses_me_.admin
{
    public partial class AddHouse : System.Web.UI.Page
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

            if (imageUpload.HasFile) /*imageUpload hye lid of UploadFile nehna 7tynaha ,so 3am n2oul 
                                   eno eza imageUpload be alba file*/
            {
                try
                {

                    if (imageUpload.PostedFile.ContentType == "image/jpeg") 
                    {
                        if (imageUpload.PostedFile.ContentLength < 1024000) 
                        {
                            string filename = Path.GetFileName(imageUpload.FileName); 
                            imageUpload.SaveAs(Server.MapPath("images/") + filename); 
                                                                                       
                            Label1.Text = "Upload status:File Upload!"; 



                            query = "insert into houseFeatures   values('" + txtlot.Text + "','" + txtlocation.SelectedValue + "','" + txtcity.SelectedValue + "','" + txtbed.Text + "','" + txtbath.Text  +"','" + txtGarage.Text + "','" +txtType.SelectedValue + "','" +txtCategory.SelectedValue + "','" + txtprice.Text + "','" + txtfeatures.Text+ "','" + filename + "')";

                            s.insert(query);
                            

                            Response.Write("<script>alert(' House is inserted')</script>");
                           
                            txtlot.Text = "";
                            txtfeatures.Text = "";
                            txtbed.Text = "";
                            txtbath.Text = "";
                            txtprice.Text = "";
                           





                        }
                        else

                            Label1.Text = "Upload status:The file should be less then 1MB";

                    }
                    else

                        Label1.Text = "Upload status:Only JPEG files are accepted!";

                }
                catch (Exception ex)
                {
                    Label1.Text = "Upload status:The file could not be uploaded the follwing error occured:" + ex.Message;
                }

            }




















        }
    }
}