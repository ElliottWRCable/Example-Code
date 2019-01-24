<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Loginpage.aspx.vb" Inherits="WebApplication3.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server">
            <Scripts>
                <asp:ScriptReference Name="jquery"/>
            </Scripts>
        </asp:ScriptManager>
        <div>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <asp:Button ID="SignupButton" runat="server" Text="Signup for an account" Width="220px"  />
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Mainpage.aspx"></asp:Login>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT * FROM [tbUsers]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
