using System;
using Npgsql;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class content2 : System.Web.UI.Page
    {
        NpgsqlConnection theConnenction = new NpgsqlConnection();
        string myConnection = "Server=127.0.0.1;Port=5432;Database=belajarDB;User Id=postgres;Password = '772502';";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbSimpan_Click(object sender, EventArgs e)
        {
            theConnenction = new NpgsqlConnection();
            theConnenction.ConnectionString = myConnection;

            if (theConnenction.State == ConnectionState.Closed)
            {
                theConnenction.Open();
            }

            string query = "insert into utama.orang(nama, alamat) values('" + tbNama.Text + "', '" + tbAlamat.Text + "');";
            NpgsqlCommand myCommand = new NpgsqlCommand(query, theConnenction);
            myCommand.CommandType = CommandType.Text;

            myCommand.ExecuteNonQuery();
        }
    }
}