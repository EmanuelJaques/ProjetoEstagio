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
        string nomeGenero = TextBox1.Text;
        DateTime data = DateTime.Now;

        connection.Open();
        SqlCommand command = new SqlCommand("Insert into Generos values ('"+nomeGenero+"','"+data+"')", connection);
        command.ExecuteNonQuery();
        connection.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('inserido com sucesso!');", true);
        getListaAlbum();
    }
    void getListaAlbum()
    {
        SqlCommand command = new SqlCommand("Select * from Generos", connection);
        SqlDataAdapter sd = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}