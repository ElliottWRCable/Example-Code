<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mainpage.aspx.vb" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Online Activity Finder</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.0"/>
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
    <meta name="vs_defaultClientScript" content="JavaScript"/>
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
    <style type="text/css">
        #Multiform {
            height: 266px;
        }
    </style>
</head>
<body>
    <form id="Multiform" method="post" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT * FROM [tbActivity]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SearchTextBox" Name="Name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT [Activitytype] FROM [tbActivity] WHERE ([Activitytype] = @Activitytype)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="Activitytype" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT * FROM [tbActivity] WHERE ([Opentimes] = @Opentimes)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="Opentimes" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT * FROM [tbActivity] WHERE ([Town] = @Town)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="Town" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT * FROM [tbActivity] WHERE ([County] = @County)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="County" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4ProjectDatabase %>" SelectCommand="SELECT [Name], [Description], [Address], [Opentimes], [Town], [Postcode], [County], [Thumbnail], [OtherImages], [Videolink], [Contactinfo], [Costrange], [Activitytype] FROM [tbActivity]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Advertise my own activity ==&gt;" Width="200px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" Height="30px" Text="Login / Sign up ==&gt;" Width="200px" />
            <br />
        </div>
        <div>
        <asp:Label ID="Label1" runat="server" Text="Search by Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Activity type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="County"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Cost range"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Open times"></asp:Label>
        <br />
        <asp:TextBox ID="SearchTextBox" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Name" DataValueField="Name"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="Activitytype" DataValueField="Activitytype" AutoPostBack="True" Width="90px">
                <asp:ListItem Selected="True"></asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="County" DataValueField="County"  AutoPostBack="True" Width="90px">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Costrange" DataValueField="Costrange" AutoPostBack="True" style="margin-bottom: 0px" Width="90px">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Opentimes" DataValueField="Opentimes" Width="90px">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
            <br />
            </div>
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="830px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <asp:Label ID="ThumbnailLabel" runat="server" Text='<%# Eval("Thumbnail") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                Opentimes:
                <asp:Label ID="OpentimesLabel" runat="server" Text='<%# Eval("Opentimes") %>' />
                <br />
                Costrange:
                <asp:Label ID="CostrangeLabel" runat="server" Text='<%# Eval("Costrange") %>' />
                <br />
                Activitytype:
                <asp:Label ID="ActivitypeLabel" runat="server" Text='<%# Eval("Activitytype") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Town:
                <asp:Label ID="TownLabel" runat="server" Text='<%# Eval("Town") %>' />
                <br />
                Postcode:
                <asp:Label ID="PostcodeLabel" runat="server" Text='<%# Eval("Postcode") %>' />
                <br />
                County:
                <asp:Label ID="CountyLabel" runat="server" Text='<%# Eval("County") %>' />
                <br />
                <asp:Label ID="OtherImagesLabel" runat="server" Text='<%# Eval("OtherImages") %>' />
                <br />
                Videolink:
                <asp:Label ID="VideolinkLabel" runat="server" Text='<%# Eval("Videolink") %>' />
                <br />
                Contactinfo:
                <asp:Label ID="ContactinfoLabel" runat="server" Text='<%# Eval("Contactinfo") %>' />
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
        </asp:DataList>
        <br />
    </form>
</body> 
</html>
