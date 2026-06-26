<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_ManageApplications.aspx.cs" Inherits="Scholarship_Application_Management_system.Admin_ManageApplications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #1d2b64, #f8cdda);
    }

    .container {
        width: 50%;
        margin: 50px auto;
        background: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.3);
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        color: #444;
    }

    input[type=text] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 8px;
        border: 1px solid #ccc;
        transition: 0.3s;
    }

    input[type=text]:focus {
        border-color: #6a5acd;
        outline: none;
        box-shadow: 0 0 5px #6a5acd;
    }

    input[type=submit] {
        width: 100%;
        padding: 12px;
        background: linear-gradient(45deg, #ff512f, #dd2476);
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type=submit]:hover {
        opacity: 0.85;
    }

    .grid {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
        text-align: center;
    }

    .grid th {
        background-color: #6a5acd;
        color: white;
        padding: 10px;
    }

    .grid td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    .grid tr:hover {
        background-color: #f2f2f2;
    }

    hr {
        margin: 30px 0;
    }

    #lblMessage {
        color: green;
        font-weight: bold;
        display: block;
        text-align: center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">

        <h2>Add Scholarships</h2>

        <label>Scholarship Name</label>
        <asp:TextBox ID="txtScholarshipName" runat="server"></asp:TextBox>
        <br /><br />

        <label>Amount</label>
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <br /><br />

        <label>Last Date</label>
        <asp:TextBox ID="txtLastdate" runat="server"></asp:TextBox>
        <br /><br />

        <label>Eligibility</label>
        <asp:TextBox ID="txtEligibility" runat="server"></asp:TextBox>
        <br /><br />

        <asp:Button ID="btnAddScholarship" runat="server"
            Text="Add Scholarship"
            OnClick="btn_AddScholarship_Click" />
        <br /><br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

        <hr />

        <h2>Scholarship List</h2>
        <asp:GridView ID="GridView1" runat="server" CssClass="grid"></asp:GridView>

    </div>
</form>
    </body>
    </html>
