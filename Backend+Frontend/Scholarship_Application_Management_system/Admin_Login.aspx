<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Scholarship_Application_Management_system.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login </title>
<style>
    *{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
   body {
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#141e30,#243b55);
    min-height:100vh;
    display:flex;
    justify-content:center;
    text-align:center;
}

   .login-container {
    width: 420px;
    margin: 20px;
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0px 8px 25px rgba(0,0,0,0.3);
    
   }

   h2{
    text-align:center;
    color:#333;
    margin-bottom:25px;
    font-family:Arial, Helvetica, sans-serif
   }

   .label{
    font-weight:bold;
    color:#444;
    display:block;
    margin-bottom:5px;
   }

   .Admintextbox {
    width: 100%;
    padding: 10px;
    margin-bottom:15px;
    font-size: 14px;
    box-sizing:border-box;
    border-radius: 6px;
    border: 1px solid #ccc;
    background:white;
    color:#333;
    }

   .Admintextbox:focus {
        border-color: #667eea;
        outline: none;
   }

   .Adminbtn {
    width: 100%;
    padding: 12px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease;
   }

   .Adminbtn:hover {
        background: #5a67d8;
   }

   .message{
    display:block;
    text-align:center;
    margin-top:15px;
    color:#ff4444;
    font-size: 14px;
   }

</style>
</head>
<body>
    <form id="form1" runat="server">
            <div class ="login-container">
    <h2>Admin Login</h2>

    <asp:Label ID="LabelUsername" runat="server" Text="Username" CssClass="label" AssociatedControlID="txtUsername"/>
    <asp:TextBox ID ="txtUsername" runat="server" CssClass="Admintextbox" >
    </asp:TextBox><br /> <br />

    <asp:Label ID="LabelPassword" runat="server" Text="Password" CssClass="label" AssociatedControlID="txtPassword"/>
    <asp:TextBox ID ="txtPassword" runat="server" CssClass="Admintextbox" 
        TextMode="Password"/> 

    <asp:Button ID="btnAdminLogin" runat="server" Text="Login" CssClass="Adminbtn"
     OnClick="btnAdminLogin_Click" />

    <asp:Label ID ="lblMessage" runat="server" CssClass="message" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
