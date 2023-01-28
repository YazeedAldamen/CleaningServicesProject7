<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProgress.aspx.cs" Inherits="CleaningServices1.AdminDashboard.WebForm2" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uncompleted Tesks</title>
    <style>
        .right{
            margin-top:120px;
            width:80%;
            margin-left:20%;
        }
         .gridTable {
    width: 90% !important;
    margin-left: 5%;
    margin-top: 80px;
}
        .Tilte{
            width:100%;
            text-align:center;
            font-family:'Times New Roman';
            font-size:35px;
            font-style:italic;
            font-weight:bold;
            color:#2b98f0 ;
            margin-top:50px;
        }
         .search{
             margin-left:40%;
             margin-top: 55px;
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
    margin-top:60px;
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
    margin-top: 80px;
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:AdminDash runat="server" id="AdminDash" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div class="right">
                <div class="Tilte">
                    <asp:Label ID="Label1" runat="server" Text="Uncompleted Tasks"></asp:Label> </div>
                    

                           <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn ahmad">
                <div class="row ahmad">
                    
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-b">
                                        <i class="fa-solid fa-circle-pause" style="color:#2b98f0"></i>
                                      
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="req" runat="server" Text="2" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px; ">Requests</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                     <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-b">
                                        <i class="fa-solid fa-spinner"  style=" color:#f3e53d"></i>
                                        
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="pro" runat="server" Text="2" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px; ">Progress</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                     <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-b">
                                        <i class="fa-solid fa-circle-check"  style=" color: forestgreen;"></i>
                                        
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="don" runat="server" Text="2" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px; ">Done</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                  

                </div></div></div>
                  <div class="search">
                        <asp:TextBox ID="txtSearch" runat="server" style="border:solid 2px #2b98f0;" placeholder="id,name,..etc"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btnSearch" OnClick="btnSearch_Click"/>
                    </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                  
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="gridTable .table-striped table table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                          EmptyDataText="No Data Found" >
                  
                    <AlternatingRowStyle HorizontalAlign="Center" />
                    <Columns>                        
                        <asp:BoundField DataField="BookingID" HeaderText="#" />

                        <asp:BoundField DataField="ClientName" HeaderText="ClientName" />
                        <asp:BoundField DataField="ClientEmail" HeaderText="ClientEmail" />
                        <asp:BoundField DataField="ClientPhone" HeaderText="ClientPhone" />
                          <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                         <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Status" HeaderText="Status" >

                     
                        <ControlStyle ForeColor="Yellow" />
                        <%--<HeaderStyle BackColor="#43A3F1" BorderColor="White" BorderStyle="None" />--%>
                        <%--<ItemStyle BackColor="#43A3F1" ForeColor="Yellow" Height="10px" Width="15px" BorderColor="Black" Font-Bold="True" />--%>
                        </asp:BoundField>

                     
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                    </Columns><EmptyDataRowStyle HorizontalAlign="Center" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="#2B98F0" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>


                </ContentTemplate>


            </asp:UpdatePanel>


            
              

            </div>

        </div>
    </form>
</body>
</html>

