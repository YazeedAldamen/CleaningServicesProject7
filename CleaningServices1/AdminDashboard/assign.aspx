<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assign.aspx.cs" Inherits="CleaningServices1.AdminDashboard.WebForm1" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
    box-sizing: border-box;
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
}
        .accountt {
    width: 350px;
    background-color: #f3e53d;
    padding: 15px;
    margin: 2px auto;
    display: flex;
    justify-content: space-between;
}
.box {
    width: 600px;
    padding: 20px;
    margin: auto;
    position: relative;
}
img {
    position: absolute;
    /*top: 30px;*/
    /*left: 40%;*/
    z-index: 1;
}
.img1 {
    position: absolute;
    top: 30px;
    left: 40%;
    z-index: 1;
}

.card {
    width: 400px;
    height: 486px;
    background-color: #fff;
    padding: 23px;
    margin: 120px auto 20px;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    box-shadow: 0px 6px 14px 2px #ddd;
}

.card::before {
    content: "";
    width: 350px;
    height: 2px;
    background-color: #eee;
    position: absolute;
    top: 100px;
}

.btn{
    
    font-weight: bold;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 35px;
    height: 35px;
    border-radius: 4px;
    color: white;
    background-color: #3b74ba;
    position: absolute;
    bottom: -15px;
    right: 10px;
}

.title {
    margin: 20px;
}

h2 {
    text-align: center;
    color: #3b74ba;
    text-transform: capitalize;
    margin-bottom: 5px;
}
p {
    text-align: center;
    color: #888888;
    text-transform: capitalize;
    opacity: .9;
}

.account {
    width: 350px;
    background-color: #f6f6f6;
    padding: 15px;
    margin: 2px auto;
    display: flex;
    justify-content: space-between;
}
label{
    color :  #f3e53d ;
}
#GridView1{
   
    margin-left: 27%;
    margin-top: 0px;
}
.bn1{
        background-color: #2b98f0;
    height: 33px;
    border-radius: 4px;
    color:white ;
    border :none ;
}
.bn2{
        background-color: forestgreen;
    height: 33px;
    border-radius: 4px;
    color:white ;
    border :none ;
        width: 80px;
}
.gridTable {
    width:63% !important;
    /*margin-left: 5%;*/
    margin-top: 80px;
}
    </style>
     <script src="alert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css"/>

     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire(
                'Done!',
                'Employee Assigned',
                'success'
            ).then(function () {
                window.location = "https://localhost:44381/AdminDashboard/AdminWaiting.aspx";
            });
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div title="account">
            <uc1:AdminDash runat="server" ID="AdminDash" />
            <div class="box" style="margin-left:40%;">
        <img src="https://elzero.org/images/challenges/person-blue-shirt.png" alt="Erorr" class="img1">
        <div class="card">
            <div class="title">
                <h2>customer information</h2>
               <br />
            </div>
            <div class="account one">
                <span> Customer Name </span>
                <span> <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </span>
            </div>
            <div class="account two">
                <span>Customer Phone </span>
                <span><asp:Label ID="Label2" runat="server" Text=""></asp:Label> </span>
            </div>
             <div class="account two">
                <span>Customer City </span>
                <span><asp:Label ID="Label3" runat="server" Text=""></asp:Label> </span>
            </div>
             <div class="account two">
                <span>Customer Email </span>
                <span><asp:Label ID="Label4" runat="server" Text=""></asp:Label> </span>
            </div>
         
         
              <div class="accountt two" id="emm" runat="server" >
                <span> Employee Name</span>
                <span><asp:Label ID="Label7" runat="server" Text=" "></asp:Label> </span>
            </div>
           

            <div class="account two">
              <asp:Button CssClass="bn1" ID="Button1" runat="server" Text="Choose an employee" OnClick="Button1_Click" /> 
            <asp:Button CssClass="bn2"   ID="Button2" runat="server" Text="save" OnClick="Button2_Click" />
                </div>
        </div>
    </div>
            <div style="width:80%; margin-left:20%; text-align:center; color:red;">
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </div>
            <h3 id="emmm" runat="server" > </h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="867px" CssClass="gridTable .table-striped table table-hover" 
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" 
                EmptyDataText="You Dont Have Active Employee In Current Time">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="EmployeeName" HeaderText=" Name" />
                    <asp:BoundField DataField="EmployeePhone" HeaderText="Phone" />
                    <asp:BoundField DataField="EmployeeEmail" HeaderText="Email" />
                    <asp:BoundField />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                    <asp:HyperLinkField   DataNavigateUrlFields="EmployeeID" Text=" Choose " DataNavigateUrlFormatString="assign.aspx?em={0}" />
                </Columns>
                <EmptyDataRowStyle HorizontalAlign="Center" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="#2B98F0" />
                    <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <br /><br />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
           
        </div>

    </form>
</body>
</html>
