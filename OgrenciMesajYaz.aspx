<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciMesajYaz.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.OgrenciMesajOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TextGonderen" runat="server">Gonderen</asp:Label>
                <asp:TextBox ID="TextGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="TextAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextKonu" runat="server">Mesaj Konusu</asp:Label>
                <asp:TextBox ID="TextKonu" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextIcerik" runat="server">Mesaj İçeriği</asp:Label>
                <textarea id="TextIcerik" cols="20" rows="6" runat="server" class="form-control"></textarea>
            </div>
        </div>
         <asp:Button ID="GonderButton" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="GonderButton_Click" />
    </form>

</asp:Content>
