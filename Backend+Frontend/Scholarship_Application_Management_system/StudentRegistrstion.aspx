<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistrstion.aspx.cs" Inherits="Scholarship_Application_Management_system.StudentRegistrstion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <style>
        body{
            font-family:Arial;
            background:linear-gradient(to right,#74ebd5,#ACB6E5);
        }
        .container{
            width:420px;
            margin:auto;
            margin-top:80px; 
            background:white;
            padding:25px;
            border-radius:10px;
            box-shadow:0px 0px 15px gray;  
        }
         h2{
             text-align:center;
             color:#333;
         }
        label {
            font-weight: bold;
        }
        .textbox {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
            .btn:hover {
             background: #45a049;
            }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Registration Form</h2>
            Name:
            <asp:TextBox ID ="txtName" runat ="server"></asp:TextBox>
            <br /><br />
            E-Mail:
            <asp:TextBox ID ="txtMail" runat ="server"></asp:TextBox>
            <br /><br />
            Mobile:
            <asp:TextBox ID ="txtmobile" runat ="server"></asp:TextBox>
             <br /><br />
            Course:
            <asp:TextBox ID ="txtcourse" runat ="server"></asp:TextBox>
             <br /><br />
            Password:
            <asp:TextBox ID ="txtPassword" runat ="server" TextMode="Password"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnRegister" runat="server" Text="Register"
                OnClick="btn_Register_Click" /> <br /> <br />

            <asp:Label ID="LabelRegister" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
