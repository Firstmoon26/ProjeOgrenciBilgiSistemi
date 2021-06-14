<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="ProjeOgrenciBilgiSistemi.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

        .auto-style2 {
            height: 777px;
        }

        .auto-style3 {
            color: #FFFFFF;
        }

        .auto-style4 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 700px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2" style="background-image: url('background.jpg')">
        <div style="margin: auto" class="auto-style5">
            <br />
            <h2 class="text-center" style="color: #FFFFFF; font-family: 'Segoe Script';"><strong>Obi Kursu Öğrenci Bilgi Sistemi</strong></h2>
            <br />
            <br />
            <br />
            <div class="text-center">
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/avatar.png" Width="200px" />
            </div>
            <br />
            <div>
                <strong>
                    <asp:Label for="TextNumara" runat="server" CssClass="auto-style3">Kullanıcı Adı</asp:Label>
                </strong>
                <asp:TextBox ID="TextNumara" runat="server" CssClass="auto-style1" Height="45px" Width="700px"></asp:TextBox>
            </div>
            <br />

            <div>
                <strong>
                    <asp:Label for="TextSifre" runat="server" CssClass="auto-style3">Şifre</asp:Label>
                </strong>
                <asp:TextBox ID="TextSifre" runat="server" CssClass="auto-style1" Height="45px" Width="700px" TextMode="Password"></asp:TextBox>
                <br />
                <div class="text-center">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Visible="False" Height="35px" Width="298px" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                </div>
            </div>
            <br />
            <strong>
                <asp:Button ID="Button1" runat="server" Text="Öğrenci Girişi" CssClass="btn btn-info" Width="346px" OnClick="Button1_Click" Font-Bold="True" />
                <asp:Button ID="ÖgretmenGirisButton" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="346px" OnClick="ÖgretmenGirisButton_Click" Font-Bold="True" />
            </strong>
        </div>
    </form>
</body>
</html>
