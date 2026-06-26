
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="Scholarship_Application_Management_system.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
    <link href ="Student_Login_style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container">
           <label> Email</label>
            <asp:TextBox ID ="txtMail" runat="server" CSSClass="textbox" >
            </asp:TextBox><br /> <br />
            <label> Password</label>
            <asp:TextBox ID ="txtpassword" runat="server" CSSClass="textbox" 
                TextMode="Password"> </asp:TextBox> <br /> <br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn"
             OnClick="btnLogin_Click" />

            <asp:Label ID ="lblMessage" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
