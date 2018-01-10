using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClickMe_Click(object sender, EventArgs e)
        {
            lbResult.Text = tbNama.Text;
            listNama.Items.Add(tbNama.Text);
        }

        protected void listNama_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbResult.Text = listNama.SelectedValue;
        }

        protected void btnTambah_Click(object sender, EventArgs e)
        {
            if(Session["nilaiAkhir"] != null)
            {
                Session["nilaiAkhir"] = int.Parse(Session["nilaiAkhir"].ToString()) + int.Parse(tbNilai.Text);
            } else
            {
                Session["nilaiAkhir"] = int.Parse(tbNilai.Text);
            }
            
        }

        protected void btnHasil_Click(object sender, EventArgs e)
        {
            lblHasil.Text = Session["nilaiAkhir"].ToString();
        }

        protected void linkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webform2.aspx");
        }
    }
}