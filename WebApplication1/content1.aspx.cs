using System;
using Npgsql;
using System.Data;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class content1 : System.Web.UI.Page
    {
        DataTable myDataTable = new DataTable();
        NpgsqlConnection theConnenction = new NpgsqlConnection();
        string myConnection = "Server=127.0.0.1;Port=5432;Database=belajarDB;User Id=postgres;Password = '772502';";

        protected void Page_Load(object sender, EventArgs e)
        {
            // buat objek koneksi
            theConnenction = new NpgsqlConnection();
            theConnenction.ConnectionString = myConnection;

            if (theConnenction.State == ConnectionState.Closed)
            {
                theConnenction.Open();
            }

            //buat command
            string query = "select * from utama.orang";
            NpgsqlCommand myCommand = new NpgsqlCommand(query, theConnenction);
            myCommand.CommandType = CommandType.Text;

            //baca data
            NpgsqlDataReader aDr;
            aDr = myCommand.ExecuteReader();

            // menampung hasil query

            myDataTable.Load(aDr);
            if (ViewState["myDataTable"] == null )
            {
                ViewState["myDataTable"] = myDataTable;
            }

            //listNama.Items.Add(myDataTable.Rows[0].Field<string>("nama"));
            // menampilkan data pada listBox

            /*
            foreach (DataRow drow in myDataTable.Rows)
            {
                listNama.Items.Add(drow["nama"].ToString());
            }
            */

            // menampilkan data pada grid view
            GridListNama.DataSource = myDataTable;
            GridListNama.DataBind();
        }

        protected void GridListNama_RowComand(object sender, GridViewEditEventArgs e)
        {
            GridListNama.EditIndex = e.NewEditIndex;

            // setting data resource disini
            GridListNama.DataSource = (DataTable)ViewState["myDataTable"];
            GridListNama.DataBind();
        }

        protected void GridListNama_RowCanceling(object sender, GridViewCancelEditEventArgs e)
        {
            GridListNama.EditIndex = -1;
            GridListNama.DataSource = (DataTable)ViewState["myDataTable"];
            GridListNama.DataBind();
        }

        protected void GridListNama_OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            // update view state
            myDataTable = (DataTable)ViewState["myDataTable"];

            GridViewRow row = GridListNama.Rows[e.RowIndex];
            myDataTable.Rows[row.DataItemIndex]["nama"] = ((TextBox)(row.Cells[0].Controls[1])).Text;
            myDataTable.Rows[row.DataItemIndex]["alamat"] = ((TextBox)(row.Cells[1].Controls[0])).Text;
            ViewState["myDataTable"] = myDataTable;

            GridListNama.EditIndex = -1;
            GridListNama.DataSource = (DataTable)ViewState["myDataTable"];
            GridListNama.DataBind();


            // update Database
            theConnenction = new NpgsqlConnection();
            theConnenction.ConnectionString = myConnection;

            if (theConnenction.State == ConnectionState.Closed)
            {
                theConnenction.Open();
            }

            string query = "update utama.orang set nama='" + ((TextBox)(row.Cells[0].Controls[1])).Text + "', alamat='" + ((TextBox)(row.Cells[1].Controls[0])).Text + "' where id_orang='" + myDataTable.Rows[row.DataItemIndex]["id_orang"] + "'";
            NpgsqlCommand myCommand = new NpgsqlCommand(query, theConnenction);
            myCommand.CommandType = CommandType.Text;

            myCommand.ExecuteNonQuery();
        }
    }
}