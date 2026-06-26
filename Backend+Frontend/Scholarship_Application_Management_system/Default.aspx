<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Scholarship_Application_Management_system.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Btn_Test" runat="server" Text="Test Connection" OnClick="BtnTest_Click" />
            <asp:Label ID="Lbl_message" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
