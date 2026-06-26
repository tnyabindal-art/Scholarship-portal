<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Dashboard.aspx.cs" Inherits="Scholarship_Application_Management_system.Student_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin:0px;
            padding:0px;
            font-family:Arial;
            background:linear-gradient(135deg,#667eea,#764);

        }
             /*header */
        .header{
            background:#1f2937;
            color:white;
            text-align:center;
            padding:20px;
            font-size:24px;
            font-weight:bold;
        }

        /*Main Container*/

        .dashboard-container{
            width:80%;
            margin:auto;
            margin-top:40px;
        }

        /*Welcome card*/

        .welcome-card{
            background:white;
            padding:25px;
            border-radius:10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            margin-bottom:30px;
            text-align:center;
        }

        /*Scholarship card*/

        .scholarship-card{
            background:white;
            padding:25px;
            border-radius:10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2)
        }

        /*Table style*/
        .scholarship-table{
            width:100px;
            border-collapse:collapse;
            margin-top:20px;
        }

        .scholarship-table th {
            background:#667eea;
            color:white;
            padding:10px;
        }

        .scholarship-table td{
            padding:10px;
            border-bottom:1px solid #ddd;
        }

        .scholarship-table tr:hover{
            background:#f2f2f2;
        }

        .apply-btn{
            background:#22c55e;
            color:white;
            border:none;
            padding:10px 18px;
            border-radius:5px;
            cursor:pointer;
            margin-top:20px;
        }
        /*View Application status button CSS Code */
        .status-btn{
    background:#22c55e;
    color:white;
    border:none;
    padding:10px 18px;
    border-radius:5px;
    cursor:pointer;
    margin-left:15px;
         }
        .status-btn:hover {
    background:#16a34a;  /* darker green on hover */
         }

.status-approved{
    color:green;
    font-weight:bold;
}

.status-rejected{
    color:red;
    font-weight:bold;
}

.status-pending{
    color:orange;
    font-weight:bold;
}



    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            Scholarship Management System
    </div>
        <div class="dashboard-container">
            <div class="welcome-card">
                <h2>Welcome Student</h2>
                <p>You can View , Apply and Check Status for Scholarships</p>
            </div>
        <div class="scholarship-card">
            <h3>Available Scholarships</h3>
            <asp:GridView ID="GridView1" runat="server"
    CssClass="scholarship-table"
    AutoGenerateColumns="true"
    OnRowDataBound="GridView1_RowDataBound">
</asp:GridView>
            <asp:Button ID="btnApplyScholarship" 
                runat="server" Text="Apply Scholarship"
                PostBackURL="Apply_Scholarship.aspx"
                CssClass="apply-btn"/> 
            <asp:Button ID="btnViewStatus" 
            runat="server" 
            Text="Check Status"
            OnClick="btnViewStatus_Click"
             CssClass="status-btn"/>
  </div>
  </div>
 </form>
</body>
</html>
