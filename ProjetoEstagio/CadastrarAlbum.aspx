<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CadastrarAlbum.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <h1 style="font-size:xx-large; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000;">Cadastrar Novo Album</h1>
    </div>
    <table class="table table-hover">
        <tr>
            <td style="width: 138px; height: 36px">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Nome Album"></asp:Label>
            </td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 36px">Data Lançamento</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 36px">Artista</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 36px">Genero</td>
            <td style="height: 36px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="Nome">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlbunsDBConnectionString %>" SelectCommand="SELECT [Nome] FROM [Generos]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 36px">Preço</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 88px">Musicas</td>
            <td style="height: 88px">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Height="68px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 36px"></td>
            <td style="height: 36px">
                <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Font-Size="Large" OnClick="Button1_Click" Text="Cadastrar" Width="150px" />
                <a href="Default" class="btn btn-secondary btn-lg" style="display:inline-block">Voltar </a>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Albuns Cadastrados:</td>
        </tr>
        <tr>
            <td style="width: 138px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " Height="153px" style="margin-top: 17px" Width="1037px">
                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

