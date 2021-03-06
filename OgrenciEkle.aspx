<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.OgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


<form id="Form1" runat="server">

    <div class="form-group">
        <div>
            <asp:Label for="TextOgrNo" runat="server">Ögrenci Numarası</asp:Label>
            <asp:TextBox ID="TextOgrNo" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextOgrAd" runat="server">Ögrenci Adı</asp:Label>
            <asp:TextBox ID="TextOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextOgrSoyad" runat="server">Ögrenci Soyadı</asp:Label>
            <asp:TextBox ID="TextOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextOgrTelefon" runat="server">Ögrenci Telefon</asp:Label>
            <asp:TextBox ID="TextOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextOgrMail" runat="server">Ögrenci Mail</asp:Label>
            <asp:TextBox ID="TextOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextOgrSifre" runat="server">Ögrenci Şifre</asp:Label>
            <asp:TextBox ID="TextOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <br />
        <div>
            <asp:Label for="TextOgrSinif" runat="server">Ögrenci Sınıf</asp:Label>
            <asp:TextBox ID="TextOgrSinif" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        

    </div>
    <asp:Button ID="KaydetButton" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="KaydetButton_Click"/>
    </form>

</asp:Content>