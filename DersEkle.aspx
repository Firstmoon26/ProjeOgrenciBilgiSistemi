<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TextDersAdı" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TextDersAdı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
         <asp:Button ID="EkleButton" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="EkleButton_Click"/>
    </form>

</asp:Content>
