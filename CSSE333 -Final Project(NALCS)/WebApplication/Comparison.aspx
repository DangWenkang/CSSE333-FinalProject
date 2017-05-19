<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comparison.aspx.cs" Inherits="WebApplication1.Comparison" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .新建样式1 {
            font-family: "Arial Black";
            color: #FFFFFF;
        }
        .auto-style2 {
            font-family: "Arial Black";
            color: #FFFFFF;
            background-color: #FF0000;
        }
    </style>
</head>
<body style="background-image:url('vastaya-journal-long.jpg')">
    <form id="form1" runat="server">
        <div class="新建样式1">
            Hello!
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <span class="新建样式1">
        <br />
        Please choose one of your PlayerNames</span><br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Playername" DataValueField="Playername">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="SELECT [Playername] FROM [Log_In] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Compare" CssClass="auto-style2" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PlayerName" DataSourceID="SqlDataSource2" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" ReadOnly="True" SortExpression="PlayerName" />
                <asp:BoundField DataField="Avg_KDA" HeaderText="Avg_KDA" SortExpression="Avg_KDA" />
                <asp:BoundField DataField="Avg_KillParticipation" HeaderText="Avg_KillParticipation" SortExpression="Avg_KillParticipation" />
                <asp:BoundField DataField="Avg_GoldEarned" HeaderText="Avg_GoldEarned" SortExpression="Avg_GoldEarned" />
                <asp:BoundField DataField="Avg_MinionKills" HeaderText="Avg_MinionKills" SortExpression="Avg_MinionKills" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NA_LCSConnectionString %>" SelectCommand="Comparison" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="name" PropertyName="SelectedValue" Type="String" />
                <asp:Parameter DefaultValue="defaut" Direction="InputOutput" Name="str" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style2" OnClick="Button2_Click" Text="Back" />
    </form>
</body>
</html>
