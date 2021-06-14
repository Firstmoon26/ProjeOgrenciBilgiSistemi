<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TextDersID" runat="server">Ders ID</asp:Label>
                <asp:TextBox ID="TextDersID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextDersAdı" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TextDersAdı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
         <asp:Button ID="GüncelleButton" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="GüncelleButton_Click" />
    </form>

</asp:Content>
