<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeletarGenero.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <div>
        <h1 style="font-size:xx-large; font-family: Arial, Helvetica, sans-serif; font-weight: bolder; color: #000000;">D<span style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: xx-large;">eletar Genero</span></h1>
    </div>

        <table class="table table-hover">
            <tr>
                <td class="modal-sm" style="height: 36px; width: 139px">
                    <asp:Label ID="Label1" runat="server" Text="Nome Genero"></asp:Label>
                </td>
                <td style="height: 36px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="height: 36px; width: 139px"></td>
                <td style="height: 36px">
                    <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="Button1_Click" OnClientClick="return confirm('Tem certeza que deseja excluir?');" Text="Deletar" />
                    <a href="Default" class="btn btn-secondary btn-lg" style="display:inline-block">Voltar </a>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 139px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" Height="153px" Width="1037px">
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 139px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

</asp:Content>

