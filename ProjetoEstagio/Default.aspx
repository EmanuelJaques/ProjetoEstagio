<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Catalogo de musicas</h1>
        <p class="lead">Possibilita listar, cadastrar, atualizar e excluir albuns. Tambem possibilita a cadastro e exclusão de generos.</p>
        <p><a href="CadastrarAlbum" class="btn btn-primary btn-lg" style="display:inline-block">Cadastrar Novo Album </a> <a href="AtualizarAlbum" class="btn btn-primary btn-lg" style="display:inline-block">Atualizar Album Existente</a> <a href="DeletarAlbum" class="btn btn-primary btn-lg" style="display:inline-block">Excluir um Album</a> <a href="CadastrarGenero" class="btn btn-primary btn-lg" style="display:inline-block">Cadastrar Generos</a> <a href="DeletarGenero" class="btn btn-primary btn-lg" style="display:inline-block">Deletar Genero</a></p>
        <p style="font-size:x-large">Lista de Albuns cadastrados:</p>
        <p>
            <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" Height="178px" Width="1032px">
                <HeaderStyle BackColor="#666666" ForeColor="White" />
            </asp:GridView>
        </p>
    </div>
</asp:Content>
