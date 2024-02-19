using Houses_me_;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Houses_me_
{
    public class connection
    {


        public SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\DataGroup\\Documents\\semester(6)\\advanced web development\\ASP.NET web Application\\Houses(me)\\Houses(me)\\App_Data\\houses.mdf\";Integrated Security=True");

        public void insert(String s)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}