<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 300px;
    }
    .auto-style2 {
        height: 300px;
        width: 563px;
    }
    .auto-style3 {
        width: 563px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <td class="auto-style2">
                <asp:Chart ID="Chart1" runat="server" Width="500px">
                    <series>
                        <asp:Series Name="Dersler" ChartType="StackedBar" CustomProperties="DrawingStyle=LightToDark">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title Alignment="MiddleLeft" BackColor="ActiveCaption" Name="Title1" Text="ÖĞRENCİLERİN SINAV KATILIM ORANI EN YÜKSEK DERSLER">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td class="auto-style1">
                <asp:Chart ID="Chart2" runat="server" Width="500px">
                    <series>
                        <asp:Series Name="SINIF" ChartType="Pie" YValuesPerPoint="2">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title Alignment="MiddleLeft" BackColor="Crimson" BackGradientStyle="LeftRight" BorderColor="Red" Name="Rütbe" Text="ÖĞRENCİLERİN RÜTBELERE GÖRE DAĞILIMI">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Chart ID="Chart3" runat="server" Width="500px" Height="298px">
                    <series>
                        <asp:Series Name="Ortalama" CustomProperties="DrawingStyle=LightToDark, PointWidth=0.5" LabelBorderWidth="2">
                            <SmartLabelStyle CalloutLineWidth="2" />
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title Alignment="MiddleLeft" BackColor="Lime" BackGradientStyle="LeftRight" Name="Title1" Text="SINAV ORTALAMASI EN YÜKSEK ÖĞRENCİLER">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="Chart4" runat="server" Width="500px">
                    <series>
                        <asp:Series Name="Ortalama2" YValuesPerPoint="3" CustomProperties="DrawingStyle=LightToDark, PointWidth=0.5">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title Alignment="MiddleLeft" BackColor="255, 128, 128" BackGradientStyle="LeftRight" Name="Title1" Text="SINAV ORTALAMASI EN DÜŞÜK ÖĞRENCİLER">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
        </tr>
    </table>
</form>
</asp:Content>
