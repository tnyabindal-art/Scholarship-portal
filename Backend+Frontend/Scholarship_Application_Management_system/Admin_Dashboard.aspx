<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="Scholarship_Application_Management_system.Admin_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       body{
           font-family:Arial;
           background: linear-gradient(135deg,#4facfe,#00f2fe) ;
           margin:0;
           padding:0;
       }

       .admin-container{
           text-align:center;
           padding-top:40px;
       }

       .title{
           color:white;
           font-size:32px;
           margin-bottom:40px;

       }

       .card-container{
           display:flex;
           justify-content:center;
           gap:30px;
           margin-bottom:30px;
       }

       .card:hover
       {
           transform:scale(1.05);
       }

       .card h3{
           margin-bottom:10px;
       }

       .card p{
           font-size:14px;
           color:#555;
       }

       .admin-btn{
           background:#28a745;
           color:white;
           border:none;
           padding:10px 20px;
           border-radius:5px;
           cursor:pointer;
           margin-top:10px;
       }
        .admin-btn:hover{
            background:#218838;
        }

        .logout-btn{
            background:#dc3545;
            color:white;
            border:none;
            padding:10px 20px;
            cursor:pointer;
            margin-top:10px;
        }

        .logout-btn:hover{
           background:#c82333;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-container">
            <h2 class="title">Admin Dashboard</h2>
            <!--First Row-->
        <div class="card-container">
       
        <div class="card">
        <h3>View Applications</h3>
        <p> Check All Student Scholarship Application </p>
        <asp:Button ID="btnApplications" runat="server" Text="View Applications" 
         CssClass="admin-btn" OnClick="btnViewApplications_Click"/>
            
        </div> 
        </div>
            <!--Second Row-->
        <div class="card-container">
        <div class="card">
            <h3>Manage Scholarships</h3>
            <p>Add or Manage Scholarship schemes</p>
             <asp:Button ID="btnScholarship" runat="server" Text="Manage Scholarships" 
              CssClass="admin-btn" OnClick="btnManageScholarship_Click"/>
        </div>
        </div>
             <!--Third Row-->
        <div class="card-container">
        <div class="card">
            <h3>Logout</h3>
            <p>Exit from admin panel</p>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="logout-btn" 
                OnClick="btnLogout_Click"/>
            
        </div> 
        </div>
        
    </form>
</body>
</html>
