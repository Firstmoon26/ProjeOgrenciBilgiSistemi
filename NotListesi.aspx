<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <%--Tablo oluşturduk--%>
        <tr>
            <th scope="col">ÖĞRENCİ NO</th>
            <th scope="col">ÖĞRENCİ ADI SOYADI</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">SINAV 1</th>
            <th scope="col">SINAV 2</th>
            <th scope="col">SINAV 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>
            <th scope="col">İŞLEM</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <%--Veritabanından Eval ile verileri çektik--%>

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("OGRNO")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td><%#Eval("SINAV1")%></td>
                        <td><%#Eval("SINAV2")%></td>
                        <td><%#Eval("SINAV3")%></td>
                        <td><%#Eval("ORTALAMA")%></td>
                        <td><%#Eval("DURUM")%></td>

                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/NotGuncelle.aspx?NOTID="+Eval("NOTID")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
