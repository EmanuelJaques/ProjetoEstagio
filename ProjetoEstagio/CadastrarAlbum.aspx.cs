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
        int dataLan = int.Parse(TextBox2.Text);
        string artista = TextBox3.Text;
        double preco = double.Parse(TextBox4.Text);
        string musicas = TextBox5.Text;
        string genero = DropDownList1.SelectedValue;

        connection.Open();
        SqlCommand command = new SqlCommand("Insert into Albuns values ('" + nomeAlbum + "','" + dataLan + "','" + artista + "','" + preco + "','" + musicas + "','"+genero+"')", connection);
        command.ExecuteNonQuery();
        connection.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('inserido com sucesso!');", true);
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
}