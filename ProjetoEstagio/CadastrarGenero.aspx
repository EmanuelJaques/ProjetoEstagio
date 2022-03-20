<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CadastrarGenero.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
         <div>
        <h1 style="font-size:xx-large; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000;">Cadastrar Novo Genero</h1>
    </div>
    <table class="table table-hover">
        <tr>
            <td style="width: 138px; height: 36px">
                Nome</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 138px; height: 36px"></td>
            <td style="height: 36px">
                <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Font-Size="Large" Text="Cadastrar" Width="150px" OnClick="Button1_Click" />
                <a href="Default" class="btn btn-secondary btn-lg" style="display:inline-block">Voltar </a>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Generos Cadastrados:</td>
        </tr>
        <tr>
            <td style="width: 138px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " Height="153px" Width="1037px">
                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

