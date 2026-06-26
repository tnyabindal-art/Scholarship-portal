<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply_Scholarship.aspx.cs" Inherits="Scholarship_Application_Management_system.Apply_Scholarship" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin:0;
            font-family:Arial;
            background:linear-gradient(135deg,#667eea,#764ba2);
        }
        .apply-container{
            width:420px;
            margin:auto;
            margin-top:100px;
            background:white;
            padding:30px;
            border-radius:10px;
            box-shadow:0 5px 20px rgba(0,0,0,0.3);
        }
        .apply-container h2{
            text-align:center;
            margin-bottom:25px;
        }
        label{
            font-weight:bold;
        }
        .input-box{
            width:100%;
            padding:10px;
            margin-top:5px;
            margin-bottom:15px;
            border-radius:6px;
            border:1px solid #ccc;
        }
        .apply-btn{
            width:100%;
            padding:10px;
            background:#4CAF50;
            color:white;
            border:none;
            border-radius:6px;
            cursor:pointer;
        }
        .apply-btn:hover{
            background:#45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="apply-container">
            <h2> Apply For Scholarship</h2>

        <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box"></asp:TextBox><br /> <br/>

            
        <label>Available Scholarships</label>
            <asp:DropDownList ID="ddlScholarship" runat="server" CssClass="input-box"></asp:DropDownList><br /> <br />

            
        <label>Course</label>
            <asp:TextBox ID="txtCourse" runat="server" CssClass="input-box"></asp:TextBox><br /> <br />

            
        <label>Application Date</label>
            <asp:TextBox ID="txtDate" runat="server" CssClass="input-box" TextMode="Date"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnApply" runat="server" Text="Apply Now" CssClass="apply-btn" OnClick="btn_ApplyClick" />

            <br /> <br />

            <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
