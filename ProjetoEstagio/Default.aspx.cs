using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getListaAlbum();
        }
    }
    SqlConnection connection = new SqlConnection("Data Source=DESKTOP-72H609D\\SQLEXPRESS;Initial Catalog=AlbunsDB;User ID=sa;Password=admin");
    void getListaAlbum()
    {
        SqlCommand command = new SqlCommand("Select * from Albuns", connection);
        SqlDataAdapter sd = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}