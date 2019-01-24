<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignupPage.aspx.vb" Inherits="WebApplication3.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:ScriptManager ID="sm1" runat="server">
            <Scripts>
                <asp:ScriptReference Name="jquery"/>
            </Scripts>
        </asp:ScriptManager>
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CancelDestinationPageUrl="~/Loginpage.aspx" ContinueDestinationPageUrl="~/Loginpage.aspx"  Width="345px">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </form>
</body>
</html>
