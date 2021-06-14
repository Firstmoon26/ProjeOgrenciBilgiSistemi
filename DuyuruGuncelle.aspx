<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.DuyuruGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TextDuyuruID" runat="server">Duyuru ID</asp:Label>
                <asp:TextBox ID="TextDuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextDuyuruBaslık" runat="server">Duyuru Başlığı</asp:Label>
                <asp:TextBox ID="TextDuyuruBaslık" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextAreaIcerik" runat="server">Duyuru İçeriği</asp:Label>
                <textarea id="TextAreaIcerik" cols="20" rows="6" runat="server" class="form-control"></textarea>
            </div>
        </div>
         <asp:Button ID="GüncelleButton" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="GüncelleButton_Click"/>
    </form>

</asp:Content>
