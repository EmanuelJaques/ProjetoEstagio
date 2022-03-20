<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeletarAlbum.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <h1 style="font-size:xx-large; font-family: Arial, Helvetica, sans-serif; font-weight: bolder; color: #000000;">D<span style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: xx-large;">eletar Album</span></h1>
    </div>
    <table class="table table-hover">
        <tr>
            <td style="width: 139px; height: 36px">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Nome Album"></asp:Label>
            </td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Font-Size="Medium" OnClick="Button2_Click" style="margin-left: 20" Text="Buscar" Width="116px" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 36px"></td>
            <td style="height: 36px">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Font-Size="Large" OnClick="Button1_Click" OnClientClick="return confirm('Tem certeza que deseja excluir?');" Text="Deletar" Width="150px" />
                <a href="Default" class="btn btn-secondary btn-lg" style="display:inline-block">Voltar </a>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 36px">&nbsp;</td>
            <td style="height: 36px; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold;">
                Albuns Cadastrados:</td>
        </tr>
        <tr>
            <td style="width: 139px; height: 153px;"></td>
            <td style="height: 153px">
                <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" Height="153px" Width="1037px">
                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

