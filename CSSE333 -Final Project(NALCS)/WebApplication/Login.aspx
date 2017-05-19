<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>League of Legend SQL Test page</title>
    <style type="text/css">
        .新建样式1 {
            font-family: "Century Gothic";
            text-align: center;
            background-color: #000000;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: medium;
            color: #FFFFFF;
        }
        .Button {
            font-family: Arial;
        }
        .auto-style6 {
            font-size: medium;
            color: #FFFF00;
        }
        .auto-style7 {
            color: #FFFF00;
        }
        .auto-style8 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style9 {
            font-size: xx-large;
        }
        .auto-style10 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="新建样式1">
            <div style="background-color: #000000">
                <asp:Image ID="Image1" runat="server" Height="384px" ImageUrl="http://pre01.deviantart.net/39c2/th/pre/i/2014/051/1/8/adc_3_0l_wallpaper_by_thesoupkitchenx-d6ztncb.png" />
            </div>
            <strong style="color: #FFFFFF"><span class="auto-style2">Learn From Professional Player</span><br class="auto-style2" />
            <span class="auto-style3">2017 NA League of Legends Championship Series</span><br />
            <br />
            </strong>
            <span class="auto-style9">
            <strong>
            <br class="auto-style10" />
            </strong>
            </span>
            <strong style="color: #FFFFFF"><span class="auto-style8">
            <strong>-------Login-------<br />
            </strong>
            </span><span class="auto-style3">
            <br />
            </span></strong><span class="auto-style6"><strong>Username:</strong></span><strong style="color: #FFFFFF"><span class="auto-style5"><br />
            <br />
            </span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" BorderStyle="Solid" ToolTip="Less than 25 characters" Wrap="False"></asp:TextBox>
            <br />
            <br class="auto-style4" />
            </strong><span class="auto-style7"><strong>Password</strong></span><span class="auto-style4"><strong><span class="auto-style7"><span class="auto-style6">:</span></span></strong><strong style="color: #FFFFFF"><br />
            </strong></span>
            <br class="auto-style4" />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" AutoCompleteType="Disabled" BorderStyle="Solid" MaxLength="32" TextMode="Password" ToolTip="Less than 32 characters" Wrap="False"></asp:TextBox>
            <br class="auto-style4" />
            <br class="auto-style4" />
            <br class="auto-style4" />
            <asp:Button ID="Button1" runat="server" CssClass="Button" Height="30px" OnClick="Button1_Click" Text="Log in" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="Button" Height="30px" OnClick="Button2_Click" Text="Sign up" Width="64px" />
            <br class="auto-style4" />
            <br class="auto-style4" />
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" Text="Label" Visible="False"></asp:Label>
            <br class="auto-style4" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
