<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover"> <%--Tablo oluşturduk--%>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NUMARA</th>
                <th scope="col">ADI</th>
                <th scope="col">SOYADI</th>
                <th scope="col">TELEFON</th>
                <th scope="col">E-POSTA</th>
                <th scope="col">ŞİFRE</th>
                <th scope="col">SINIF</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server"> <%--Veritabanından Eval ile verileri çektik--%>

               <ItemTemplate>

                   <tr>
                       <td><%#Eval("OGRID")%></td>   
                       <td><%#Eval("OGRNO")%></td>
                       <td><%#Eval("OGRAD")%></td>
                       <td><%#Eval("OGRSOYAD")%></td>
                       <td><%#Eval("OGRTELEFON")%></td>
                       <td><%#Eval("OGRMAIL")%></td>
                       <td><%#Eval("OGRSIFRE")%></td>
                       <td><%#Eval("OGRSINIF")%></td>
                       <td>
                           <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                           <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                       </td>
                   </tr>

               </ItemTemplate>

            </asp:Repeater> 
        </tbody>
    </table>
    <p>
        &nbsp;
    </p>
</asp:Content>

<%--<th scope="row">1</th>--%>