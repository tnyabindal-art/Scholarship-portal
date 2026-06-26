<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_ViewApplications.aspx.cs" Inherits="Scholarship_Application_Management_system.Admin_ViewApplications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
    }

    h2 {
        text-align: center;
        color: #333;
    }

    .container {
        width: 80%;
        margin: 50px auto;
        background: #ffffff;
        padding: 20px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }

    .grid {
        width: 100%;
        border-collapse: collapse;
        text-align: center;
    }

    .grid th {
        background-color: #4CAF50;
        color: white;
        padding: 10px;
    }

    .grid td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    .grid tr:hover {
        background-color: #f5f5f5;
    }

    input[type=submit] {
        padding: 6px 12px;
        margin: 2px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        color: white;
    }

    input[value="Approve"] {
        background-color: #28a745;
    }

    input[value="Reject"] {
        background-color: #dc3545;
    }

    input[type=submit]:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h2>Student Scholarship Applications</h2>

        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="false" CssClass="grid"
            OnRowCommand="GridView1_RowCommand">

            <Columns>
                <asp:BoundField DataField="StudentEmail" HeaderText="Student Email" />
                <asp:BoundField DataField="ScholarshipName" HeaderText="Scholarship" />
                <asp:BoundField DataField="Course" HeaderText="Course" />
                <asp:BoundField DataField="ApplicationDate" HeaderText="Date" />
                <asp:BoundField DataField="Status" HeaderText="Status" />

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnApprove" runat="server" Text="Approve"
                            CommandName="Approve"
                            CommandArgument='<%#Eval("ApplicationID") %>' />

                        <asp:Button ID="btnReject" runat="server" Text="Reject"
                            CommandName="Reject"
                            CommandArgument='<%#Eval("ApplicationID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
</form>
    </body>
    </html>
