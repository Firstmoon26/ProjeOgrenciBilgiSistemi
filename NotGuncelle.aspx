<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
           
            <div>
                <asp:Label for="TextOgrAdSoyad" runat="server">Adı Soyadı</asp:Label>
                <asp:TextBox ID="TextOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TextDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextSınav1" runat="server">Sınav 1</asp:Label>
                <asp:TextBox ID="TextSınav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextSınav2" runat="server">Sınav 2</asp:Label>
                <asp:TextBox ID="TextSınav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextSınav3" runat="server">Sınav 3</asp:Label>
                <asp:TextBox ID="TextSınav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextOrtalama" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="TextOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="TextDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>
        <asp:Button ID="HesaplaButton" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" OnClick="HesaplaButton_Click" />
        <asp:Button ID="GuncelleButton" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="GuncelleButton_Click" />
    </form>

</asp:Content>
