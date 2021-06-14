<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="DropDownListOgretmen" runat="server">Duyuru Yapacak Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownListOgretmen" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="TextDuyuruBaslık" runat="server">Başlık</asp:Label>
                <asp:TextBox ID="TextDuyuruBaslık" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextAreaIcerik" runat="server">İçerik</asp:Label>
                <textarea id="TextAreaIcerik" cols="20" rows="6" runat="server" class="form-control"></textarea>
            </div>
        </div>
         <asp:Button ID="EkleButton" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="EkleButton_Click"/>
    </form>

</asp:Content>
