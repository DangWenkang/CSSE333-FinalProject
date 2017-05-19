<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teamandplayer.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>User Profile</title>
    <style type="text/css">
        #form1 {
            color: #3399FF;
            font-size: large;
        }
        .新建样式1 {
            font-family: "Arial Black";
        }
        .新建样式2 {
            font-family: "Arial Black";
        }
        .auto-style1 {
            font-family: "Arial Black";
            color: #FF0000;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #000000;
        }
        .新建样式3 {
            font-family: "Arial Black";
        }
    </style>
</head>
<body style="background-image: url('shurima_splash.jpg'); background-repeat: repeat-y; text-align: center;">
    <form id="form1" runat="server">
        <strong>
        <br class="auto-style3" />
        <span class="auto-style4">Click Button To Ckeck MVP</span></strong><br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="MVP" CssClass="新建样式1" Height="30px" Width="216px" />
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Visible="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="WEEK" HeaderText="WEEK" SortExpression="WEEK" />
                <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" SortExpression="PlayerName" />
                <asp:BoundField DataField="KDA" HeaderText="KDA" ReadOnly="True" SortExpression="KDA" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="MVP_check" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        <br />
        <span class="auto-style3">--------------------------------------------------------------------------------------</span><br />
        <asp:Label ID="Label3" runat="server" Text="Select Player name to check his or her record" CssClass="auto-style4"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="PlayerName" DataValueField="PlayerName" Height="30px" Width="100px">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" Text="check player's record" OnClick="Button2_Click" CssClass="新建样式1" Width="229px" Height="30px" />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT [PlayerName] FROM [ProPlayer]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PlayerName" DataSourceID="SqlDataSplayer" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" ReadOnly="True" SortExpression="PlayerName" />
                <asp:BoundField DataField="Avg_KDA" HeaderText="Avg_KDA" SortExpression="Avg_KDA" />
                <asp:BoundField DataField="Avg_KillParticipation" HeaderText="Avg_KillParticipation" SortExpression="Avg_KillParticipation" />
                <asp:BoundField DataField="Avg_GoldEarned" HeaderText="Avg_GoldEarned" SortExpression="Avg_GoldEarned" />
                <asp:BoundField DataField="Avg_MinionKills" HeaderText="Avg_MinionKills" SortExpression="Avg_MinionKills" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSplayer" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT * FROM [Player] WHERE ([PlayerName] = @PlayerName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="PlayerName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT [TRank], [TeamName] FROM [Team] ORDER BY [TRank]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <span class="auto-style3">--------------------------------------------------------------------------------------</span><br />
        <br />
        <strong>
        <span class="auto-style4">Click Button To Team Rank</span></strong><br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Check the Rank of LCS Team" CssClass="新建样式1" Width="264px" Height="30px" />
        <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TeamName" DataSourceID="SqlDataSource1" Visible="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="TRank" HeaderText="TRank" SortExpression="TRank" />
                <asp:BoundField DataField="TeamName" HeaderText="TeamName" ReadOnly="True" SortExpression="TeamName" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <br />
        <span class="auto-style3">--------------------------------------------------------------------------------------</span><br />
        <span class="auto-style4">Select team name to check teammembers</span><br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="teamName" DataValueField="teamName" Height="30px" Width="100px">
        </asp:DropDownList>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Check Teammebers" CssClass="新建样式1" Width="231px" Height="30px" />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT DISTINCT [teamName] FROM [PlayFor]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="teamName,PlayerName" DataSourceID="SqlDatamember" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="teamName" HeaderText="teamName" ReadOnly="True" SortExpression="teamName" />
                <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" ReadOnly="True" SortExpression="PlayerName" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDatamember" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT * FROM [PlayFor] WHERE ([teamName] = @teamName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="teamName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <span class="auto-style3">--------------------------------------------------------------------------------------<br />
        <br />
        </span><br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="More detailed match info" CssClass="新建样式1" Width="379px" Height="30px" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" CssClass="auto-style1" OnClick="Button6_Click1" Text="Back to your profile" Width="390px" Height="30px" />
    </form>
</body>
</html>
