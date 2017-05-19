<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .新建样式1 {
            font-family: "Century Gothic";
            font-size: medium;
        }
        .新建样式2 {
            font-family: Calibri;
            font-size: medium;
        }
        .auto-style1 {
            font-family: Calibri;
            font-size: xx-large;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style3 {
            font-family: Calibri;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #000000;
        }
        .新建样式3 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #000000;
        }
        .新建样式4 {
            font-family: "Arial Black";
            color: #FF0000;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            font-family: Calibri;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .新建样式5 {
            font-family: Calibri;
            font-size: 64px;
        }
        .auto-style7 {
            font-family: Calibri;
            font-size: 64px;
            color: #FFFFFF;
            text-decoration: underline;
        }
        .新建样式6 {
            font-family: Calibri;
            font-size: 64px;
        }
        .auto-style8 {
            font-family: Calibri;
            font-size: 64px;
            color: #FF0000;
            text-decoration: underline;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            background-color: #FF0000;
        }
        .auto-style10 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #FF0000;
        }
    </style>
</head>
<body style="background-image: url('demacia-hallvalor.jpg'); background-repeat: no-repeat">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style7"><strong><span class="auto-style9">Welcome to the League of&nbsp;
            </span>
            </strong></span><strong>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style8"></asp:Label>
            </strong>
        </div>
        <p class="auto-style3">
            <strong>Here is your current information:</strong></p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="829px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PlayerName" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" ReadOnly="True" SortExpression="PlayerName" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="PRank" HeaderText="PRank" SortExpression="PRank" />
                <asp:BoundField DataField="Avg_KDA" HeaderText="Avg_KDA" SortExpression="Avg_KDA" />
                <asp:BoundField DataField="Avg_KillParticipation" HeaderText="Avg_KillParticipation" SortExpression="Avg_KillParticipation" />
                <asp:BoundField DataField="Avg_GoldEarned" HeaderText="Avg_GoldEarned" SortExpression="Avg_GoldEarned" />
                <asp:BoundField DataField="Avg_MinionKills" HeaderText="Avg_MinionKills" SortExpression="Avg_MinionKills" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="user_perform_list" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <span class="新建样式2">
        <br class="auto-style2" />
        <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PlayerName :&nbsp;&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style4"></asp:TextBox>
        <span class="新建样式2">
        <br class="auto-style4" />
        <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">Rank:&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" CssClass="新建样式2" Width="120px">
            <asp:ListItem>Bronze</asp:ListItem>
            <asp:ListItem>Silver</asp:ListItem>
            <asp:ListItem>Gold</asp:ListItem>
            <asp:ListItem>Platinum</asp:ListItem>
            <asp:ListItem>Diamond</asp:ListItem>
            <asp:ListItem>Master</asp:ListItem>
            <asp:ListItem>Challenger</asp:ListItem>
        </asp:DropDownList>
        &nbsp; </span> </span>
        <span class="新建样式2">
        <br />
        <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">&nbsp;Position :&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="新建样式2" Width="120px">
            <asp:ListItem>TOP</asp:ListItem>
            <asp:ListItem>MID</asp:ListItem>
            <asp:ListItem>JUNGLE</asp:ListItem>
            <asp:ListItem>ADC</asp:ListItem>
            <asp:ListItem>SUPPORT</asp:ListItem>
        </asp:DropDownList>
        &nbsp; </span>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="41px" Text="Add/Update" Width="139px" CssClass="新建样式3" OnClick="Button1_Click" />
        &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        </span>
        <span class="auto-style5">
        <span class="auto-style6"><strong>Update your recent match information:<span class="新建样式2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        </span>
        </strong></span> </span>
        <span class="新建样式2">
        <br />
        <span class="auto-style2">&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">PlayerName :&nbsp;&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" CssClass="新建样式2" DataSourceID="SqlDataSource1" DataTextField="PlayerName" DataValueField="PlayerName">
        </asp:DropDownList>
&nbsp;</span><br class="auto-style4" />
        <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">KDA :&nbsp;&nbsp;&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span> </span>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style4"></asp:TextBox>
        <span class="新建样式2">
        &nbsp;<span class="auto-style2">(&gt;=0)</span><br class="auto-style4" />
        <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">&nbsp;Kill Participation:&nbsp;&nbsp; </span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span> </span>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4"></asp:TextBox>
        <span class="新建样式2">
        &nbsp;<span class="auto-style2">(&gt;=0; &lt;=100)</span><br class="auto-style4" />
        <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">Gold earn:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span> </span>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4"></asp:TextBox>
        <span class="新建样式2">
        &nbsp;<span class="auto-style2">(&gt;=0)</span><br class="auto-style4" />
        <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Minion Kills:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span> </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
        <span class="新建样式2">
        &nbsp;<span class="auto-style2">(&gt;=0)</span></span><br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <span class="新建样式2">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button2" runat="server" Height="38px" Text="Submit" Width="108px" CssClass="新建样式3" OnClick="Button2_Click" />
        <span class="新建样式2">
        <br />
        <br />
        <asp:Button ID="Button8" runat="server" Height="49px" OnClick="Button3_Click" Text="Explore the Professional Match Data" Width="366px" CssClass="新建样式4" />
        &nbsp;&nbsp; <span class="auto-style5">
        <span class="auto-style6"><strong>&nbsp;<asp:Button ID="Button7" runat="server" Height="49px" OnClick="Button4_Click" Text="Compare with Professional Player" Width="366px" CssClass="新建样式4" />
        &nbsp;&nbsp;&nbsp; </strong></span> </span><asp:Button ID="Button5" runat="server" Text="Log Out" CssClass="auto-style10" Height="49px" OnClick="Button5_Click" />
        </span>
    </form>
</body>
</html>
