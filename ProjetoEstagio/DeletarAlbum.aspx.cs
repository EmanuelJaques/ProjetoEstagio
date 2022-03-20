using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getListaAlbum();
        }
    }
    SqlConnection connection = new SqlConnection("Data Source=DESKTOP-72H609D\\SQLEXPRESS;Initial Catalog=AlbunsDB;User ID=sa;Password=admin");
    protected void Button1_Click(object sender, EventArgs e)
    {
        string nomeAlbum = TextBox1.Text;

        connection.Open();
        SqlCommand command = new SqlCommand("Delete Albuns where TituloAlbum='"+nomeAlbum+"'", connection);
        command.ExecuteNonQuery();
        connection.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deletado com sucesso!');", true);
        getListaAlbum();

    }
    void getListaAlbum()
    {
        SqlCommand command = new SqlCommand("Select * from Albuns", connection);
        SqlDataAdapter sd = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string nomeAlbum = TextBox1.Text;
        SqlCommand command = new SqlCommand("Select * from Albuns where TituloAlbum = '"+nomeAlbum+"'", connection);
        SqlDataAdapter sd = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}