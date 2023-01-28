<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="CleaningServices1.AdminDashboard.DeleteEmployee" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="Ela Admin - HTML5 Admin Template"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Delete Employee</title>
    <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
   

        body{margin-top:20px;}
.card-style1 {
    box-shadow: 0px 0px 10px 0px rgb(89 75 128 / 9%);
}
.border-0 {
    border: 0!important;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: 0.25rem;
}

section {
    padding: 120px 0;
    overflow: hidden;
    background: #fff;
}
.mb-2-3, .my-2-3 {
    margin-bottom: 2.3rem;
}

.section-title {
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 10px;
    position: relative;
    display: inline-block;
}
.text-primary {
    color: #ceaa4d !important;
}
.text-secondary {
    color: #15395A !important;
}
.font-weight-600 {
    font-weight: 600;
}
.display-26 {
    font-size: 1.3rem;
}

@media screen and (min-width: 992px){
    .p-lg-7 {
        padding: 4rem;
    }
}
@media screen and (min-width: 768px){
    .p-md-6 {
        padding: 3.5rem;
    }
}
@media screen and (min-width: 576px){
    .p-sm-2-3 {
        padding: 2.3rem;
    }
}
.p-1-9 {
    padding: 1.9rem;
}

.bg-secondary {
    background: #15395A !important;
}
@media screen and (min-width: 576px){
    .pe-sm-6, .px-sm-6 {
        padding-right: 3.5rem;
    }
}
@media screen and (min-width: 576px){
    .ps-sm-6, .px-sm-6 {
        padding-left: 3.5rem;
    }
}
.pe-1-9, .px-1-9 {
    padding-right: 1.9rem;
}
.ps-1-9, .px-1-9 {
    padding-left: 1.9rem;
}
.pb-1-9, .py-1-9 {
    padding-bottom: 1.9rem;
}
.pt-1-9, .py-1-9 {
    padding-top: 1.9rem;
}
.mb-1-9, .my-1-9 {
    margin-bottom: 1.9rem;
}
@media (min-width: 992px){
    .d-lg-inline-block {
        display: inline-block!important;
    }
}
.rounded {
    border-radius: 0.25rem!important;
}
 .right{
           /* margin-top:40px;*/
            width:80%;
            margin-left:20%;
        }
  .Tilte{
            width:100%;
            text-align:center;
            font-family:'Times New Roman';
            font-size:35px;
            font-style:italic;
            font-weight:bold;
            color:#2b98f0 ;
    margin-top: 90px;        }
  .prof{
     margin-top: -75px;
  }


   .gridTable {
    width: 90% !important;
    margin-left: 5%;
    margin-top: 40px;
}
        /*.Tilte{
            width:100%;
            text-align:center;
            font-family:'Times New Roman';
            font-size:35px;
            font-style:italic;
            font-weight:bold;
            color:#2b98f0 ;
            margin-top:90px;
        }*/
      .search {
    margin-left: 40%;
    margin-top: -50px;
}
        .btnSearch{
            background-color:#2b98f0;
            color:white;
            border:none;
             font-family:'Times New Roman';
            font-size:17px;
            font-style:italic;
            font-weight:bold;
        }


        @media only screen and (min-device-width:0px) and (max-device-width:480px) {

            .gridTable {
    width: 95% !important;
    margin-left:0%;
    margin-top:20px;
}
            .search {
    margin-left:30%;
    margin-top: 55px;
}

        .right {
    margin-top: 90px;
    width:100%;
    margin-left:0%;
}
        }


        @media only screen and (min-device-width:481px) and (max-device-width:768px) {
   .gridTable {
    width: 95% !important;
    margin-left: 2.5%;
    margin-top: 30px;
}
            .search {
    margin-left: 30%;
    margin-top: 55px;
}

        .right {
    margin-top: 120px;
    width: 80%;
    margin-left: 10%;
}

        }
      
    </style>
      <script src="alert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css"/>

     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire({
                'Good job!',
                'Deieted Successfily',
                'success'
                
            }).then(function () { window.location ="https://localhost:44381/AdminDashboard/Employees.aspx" })
        }

    </script>

<%--    <script type="text/javascript">
        function ConfirmDelete() {
            swal({
                title: "Your account will be deleted permanently!",
                text: "Are you sure to proceed?",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, Remove My Account!",
                cancelButtonText: "No, I am not sure!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
                function (isConfirm) {
                    if (isConfirm) {
                        swal("Account Removed!", "Your account is removed permanently!", "success");
                    }
                    else {
                        swal("Hurray", "Account is not removed!", "error");
                    }
                });
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <uc1:AdminDash runat="server" ID="AdminDash" />
            <div class="right">

                 <div class="Tilte">
                    <asp:Label ID="Label1" runat="server" Text="Employee Information"></asp:Label>
                </div>

                <section class="bg-light prof">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div class="card card-style1 border-0">
                    <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                        <div class="row align-items-center">
                            <div class="col-lg-6 mb-4 mb-lg-0">
                                <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" style="margin-left:50px"/>
                            </div>
                            <div class="col-lg-6 px-xl-10">
                                <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded">
                                    <h3 class="h2 text-white mb-0" id="lblname" runat="server"></h3>
                                    <span style="color:#f3e53d" id="lblposi" runat="server"></span>
                                </div>
                                <ul class="list-unstyled mb-1-9">
                                    <li class="mb-2 mb-xl-3 display-28" id="lblPosition" runat="server"><span class="display-26 text-secondary me-2 font-weight-600">Position:</span> </li>
                                    <li class="mb-2 mb-xl-3 display-28" id="lblEmail" runat="server"><span class="display-26 text-secondary me-2 font-weight-600">Email :</span> </li>
                                    <li class="mb-2 mb-xl-3 display-28" id="lblPhone" runat="server"><span class="display-26 text-secondary me-2 font-weight-600">Phone Number:</span> </li>
                                    <li class="mb-2 mb-xl-3 display-28" id="lblStatus" runat="server"><span class="display-26 text-secondary me-2 font-weight-600">Status:</span> </li>
                                </ul>
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
            <div class="col-lg-12 mb-4 mb-sm-5">

                <div>
                <div class="search">
                        <asp:TextBox ID="txtSearch" runat="server" style="border:solid 2px #2b98f0"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btnSearch" OnClick="btnSearch_Click1"/>
                    </div>
                     <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="gridTable .table-striped table table-hover" Caption="Search Result" EmptyDataText="No Data Found In This Feild">
                    <AlternatingRowStyle HorizontalAlign="Center" />
                    <Columns>                        
                        <asp:BoundField DataField="BookingID" HeaderText="#" />

                        <asp:BoundField DataField="ClientName" HeaderText="Name" />
                        <asp:BoundField DataField="ClientEmail" HeaderText="Email" />
                        <asp:BoundField DataField="ClientPhone" HeaderText="Phone Number" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />

                    
                    </Columns><EmptyDataRowStyle HorizontalAlign="Center" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="#f3e53d" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>


                </div>

                <hr />
                <div>
                    <span class="section-title text-primary mb-3 mb-sm-4" style="color:#f3e53d">Done Orders</span>
               
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridTable .table-striped table table-hover" EmptyDataText="No Data Found In This Feild">
                    <AlternatingRowStyle HorizontalAlign="Center" />
                    <Columns>                        
                        <asp:BoundField DataField="BookingID" HeaderText="#" />

                        <asp:BoundField DataField="ClientName" HeaderText="Name" />
                        <asp:BoundField DataField="ClientEmail" HeaderText="Email" />
                        <asp:BoundField DataField="ClientPhone" HeaderText="Phone Number" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />

                    
                    </Columns><EmptyDataRowStyle HorizontalAlign="Center" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="#2B98F0" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>

                    </div>

            </div>
                                    <hr />

            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12 mb-4 mb-sm-5">
                        <div class="mb-4 mb-sm-5">
                            <span class="section-title text-primary mb-3 mb-sm-4" style="color:#f3e53d">Progressing Orders</span>
                            <div class="progress-text">
                      
                      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="gridTable .table-striped table table-hover" EmptyDataText="No Data Found In This Feild">
                    <AlternatingRowStyle HorizontalAlign="Center" />
                    <Columns>                        
                        <asp:BoundField DataField="BookingID" HeaderText="#" />

                        <asp:BoundField DataField="ClientName" HeaderText="Name" />
                        <asp:BoundField DataField="ClientEmail" HeaderText="Email" />
                        <asp:BoundField DataField="ClientPhone" HeaderText="Phone Number" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />

                    </Columns><EmptyDataRowStyle HorizontalAlign="Center" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="#2B98F0" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>  <hr />

                                <div style="width:100%"> 
           
                                    <asp:Button ID="back" runat="server" Text="Remove Employee" BackColor="#F3E53D"    Font-Names="Times New Roman" Font-Size="17px" ForeColor="black" Height="40px" Width="40%" Font-Underline="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" style="margin-left:30%; border-radius:7px" OnClick="back_Click"  />
                        </div>
                     </ContentTemplate>


            </asp:UpdatePanel>
             </div>
                     
                    </div>
                </div>
            
        
   
</section>
            </div>
        
     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire({
                'Good job!',
                'Deieted Successfily',
                'success'
                
            }).then(function () { window.location = "https://localhost:44381/AdminDashboard/Employees.aspx" })
        }

    </script>
    </form>
</body>
</html>
