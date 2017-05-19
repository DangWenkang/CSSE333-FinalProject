<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #3366FF;
        }
        .auto-style3 {
            color: #0066FF;
        }
        .新建样式1 {
            font-family: "Arial Black";
        }
        .新建样式2 {
            font-family: "Arial Black";
        }
        .新建样式3 {
            font-family: "Arial Black";
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .新建样式4 {
            font-family: "Arial Black";
        }
        .auto-style7 {
            font-family: "Arial Black";
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style8 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #FF0000;
        }
        .auto-style9 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #FF00FF;
        }
        .auto-style10 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #FFFF00;
        }
        .auto-style11 {
            font-family: "Arial Black";
            background-color: #FF6600;
        }
        .auto-style12 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #33CC33;
        }
        .auto-style13 {
            font-family: "Arial Black";
            color: #000000;
            background-color: #FFFF00;
        }
        .auto-style15 {
            font-family: "Arial Black";
            color: #000000;
            background-color: #00FFFF;
        }
        .auto-style16 {
            color: #FFFFFF;
            font-size: large;
        }
        .新建样式5 {
            font-family: "Arial Black";
        }
        .auto-style17 {
            font-family: "Arial Black";
            color: #FFFFFF;
        }
        .auto-style18 {
            font-family: "Arial Black";
            background-color: #6600FF;
        }
        .新建样式6 {
        }
        .新建样式7 {
        }
        .新建样式7 {
            font-family: 宋体, Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="background-image: url('ionia_splash.jpg'); background-repeat: repeat-y; text-align: center;">
    <form id="form1" runat="server">
        <div>
        </div>
        <strong>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Team Info" Width="1012px" CssClass="auto-style7" />
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />
        <span class="auto-style8">Input player name and check out his proformence for every match! </span><br />
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="PlayerName" DataValueField="PlayerName" Height="30px" Width="90px">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check Player Match Info" Width="244px" CssClass="新建样式1" Height="30px" />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT DISTINCT [PlayerName] FROM [PlayIn]"></asp:SqlDataSource>
        <p>
            &nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataMatchperform" Height="151px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="797px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" Visible="False" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" SortExpression="PlayerName" />
                    <asp:BoundField DataField="KillParticipation" HeaderText="KillParticipation" SortExpression="KillParticipation" />
                    <asp:BoundField DataField="Damage" HeaderText="Damage" SortExpression="Damage" />
                    <asp:BoundField DataField="DamageTaken" HeaderText="DamageTaken" SortExpression="DamageTaken" />
                    <asp:BoundField DataField="GoldEarned" HeaderText="GoldEarned" SortExpression="GoldEarned" />
                    <asp:BoundField DataField="MinionKills" HeaderText="MinionKills" SortExpression="MinionKills" />
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
            <asp:SqlDataSource ID="SqlDataMatchperform" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT [PlayerName], [KillParticipation], [Damage], [DamageTaken], [GoldEarned], [MinionKills] FROM [PlayIn] WHERE ([PlayerName] = @PlayerName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="PlayerName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style16">
            ------------------------------------------------------------------------------------------------------------------------------</p>
        <p class="auto-style5">
            <span class="auto-style11">Input Team name to check result of its matches:</span></p>
        <p class="auto-style2">
            <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource12" DataTextField="TeamA" DataValueField="TeamA">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT DISTINCT [TeamA] FROM [match]"></asp:SqlDataSource>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Match Results" Width="268px" CssClass="新建样式1" Height="30px" />
        </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="TeamA" HeaderText="TeamName" SortExpression="TeamA" />
                <asp:BoundField DataField="TeamB" HeaderText="TeamName" SortExpression="TeamB" />
                <asp:BoundField DataField="MDate" HeaderText="MDate" SortExpression="MDate" />
                <asp:BoundField DataField="Winner" HeaderText="Winner" SortExpression="Winner" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="MatchResults" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList7" Name="TeamA" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <span class="auto-style16">------------------------------------------------------------------------------------------------------------------------------</span><br />
        <br />
        <br />
        <span class="auto-style13">Input Team name to check the drag slained in each game</span><span class="auto-style10"> </span><span class="auto-style3"><br />
        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="TeamName" DataValueField="TeamName" Height="30px" Width="90px">
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Check Drag Slained" Width="359px" CssClass="新建样式1" Height="30px" />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT DISTINCT [TeamName] FROM [KillBy]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ClientIDMode="Predictable" DataKeyNames="matchID,DName" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="871px" Visible="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="matchID" HeaderText="matchID" ReadOnly="True" SortExpression="matchID" />
                <asp:BoundField DataField="DName" HeaderText="DragonName" ReadOnly="True" SortExpression="DName" />
                <asp:BoundField DataField="Column1" HeaderText="TeamName" ReadOnly="True" SortExpression="Column1" />
                <asp:BoundField DataField="DFunction" HeaderText="DragonFunction" SortExpression="DFunction" />
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
        </span>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="DragonsSlayedInMatches" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="teamname" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <span class="auto-style16">------------------------------------------------------------------------------------------------------------------------------</span><br />
        <br />
        <span class="auto-style12">Input player name to check his core item building in every game sorted by week&nbsp;
        </span>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT DISTINCT [PlayerName] FROM [PlayIn]"></asp:SqlDataSource>
        <br />
        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource6" DataTextField="PlayerName" DataValueField="PlayerName" Height="30px" Width="90px">
        </asp:DropDownList>
        <strong>
        <asp:Button ID="Button5" runat="server" CssClass="新建样式1" OnClick="Button5_Click" Text="Check Item Building" Width="232px" Height="30px" />
        </strong>
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="playername,iname" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Visible="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="playername" HeaderText="playername" ReadOnly="True" SortExpression="playername" />
                <asp:BoundField DataField="iname" HeaderText="iname" ReadOnly="True" SortExpression="iname" />
                <asp:BoundField DataField="attribute" HeaderText="attribute" SortExpression="attribute" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="checkitem" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList5" Name="PlayerName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <span class="auto-style16">------------------------------------------------------------------------------------------------------------------------------<br />
        <br />
        </span><br />
        <span class="auto-style15">Choose a Match to cheak the Bans of Champion and Picks of Champion</span><span class="auto-style9"><br />
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT [matchID], [MDate] FROM [match]"></asp:SqlDataSource>
        </span><span class="auto-style17">
        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource7" DataTextField="matchID" DataValueField="matchID" Height="30px" Width="90px">
        </asp:DropDownList>
        <span class="auto-style17">
        <asp:Button ID="Button6" runat="server" CssClass="新建样式1" OnClick="Button6_Click" Text="Confirm" Width="172px" Height="30px" />
        <br />
        </span>Bans:<asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="matchID,ChamName" DataSourceID="SqlDataSource8" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="新建样式7" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="matchID" HeaderText="matchID" ReadOnly="True" SortExpression="matchID" />
                <asp:BoundField DataField="ChamName" HeaderText="ChamName" ReadOnly="True" SortExpression="ChamName" />
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
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT * FROM [Ban] WHERE ([matchID] = @matchID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList6" Name="matchID" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Picks:<asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="matchID,ChamName" DataSourceID="SqlDataSource9" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="新建样式7" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="matchID" HeaderText="matchID" ReadOnly="True" SortExpression="matchID" />
                <asp:BoundField DataField="ChamName" HeaderText="ChamName" ReadOnly="True" SortExpression="ChamName" />
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
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT * FROM [Pick] WHERE ([matchID] = @matchID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList6" Name="matchID" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <span class="auto-style16">------------------------------------------------------------------------------------------------------------------------------</span><br />
        <br />
        <span class="auto-style18">Look for top five Bans of Champion and Picks of Champion all over the matches:</span><span class="新建样式6"><br />
        <asp:Button ID="Button7" runat="server" CssClass="新建样式1" Height="30px" OnClick="Button7_Click" Text="Button" />
        <br />
        <br />
        Bans:<asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="新建样式7" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="BanChampName" HeaderText="BanChampName" SortExpression="BanChampName" />
                <asp:BoundField DataField="BanTimes" HeaderText="BanTimes" SortExpression="BanTimes" />
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
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT * FROM [top5ban]"></asp:SqlDataSource>
        <br />
        Picks:<asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11" OnSelectedIndexChanged="GridView8_SelectedIndexChanged" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="新建样式7" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="PickChampName" HeaderText="PickChampName" SortExpression="PickChampName" />
                <asp:BoundField DataField="PickTimes" HeaderText="PickTimes" SortExpression="PickTimes" />
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
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT * FROM [top5pick]"></asp:SqlDataSource>
        <br />
        </span></span>
    </form>
</body>
</html>
