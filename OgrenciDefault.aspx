<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.OgrenciDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBoxOgrNo" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxAdSoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxTel" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxEposta" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxSifre" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxSinif" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
           
        </div>
         <asp:Button ID="GüncelleButton" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="GüncelleButton_Click"/>
    </form>

</asp:Content>
