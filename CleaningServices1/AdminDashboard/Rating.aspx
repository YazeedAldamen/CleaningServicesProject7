<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="CleaningServices1.AdminDashboard.Rating" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rating</title>
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


/****************************************/
 .flex-wrapper {
            display: flex;
            flex-flow: row nowrap;
        }

        .single-chart {
            width: 33%;
            justify-content: space-around;
        }

        .circular-chart {
            display: block;
            margin: 10px auto;
            max-width: 80%;
            max-height: 250px;
        }

        .circle-bg {
            fill: none;
            stroke: #eee;
            stroke-width: 3.8px;
        }

        .circle {
            fill: none;
            stroke-width: 2.8px;
            stroke-linecap: round;
            animation: progress 1s ease-out forwards;
        }

        @keyframes progress {
            0% {
                stroke-dasharray: 0 100;
            }
        }

        .circular-chart.orange .circle {
            stroke: #ab8ce4;
        }

        .circular-chart.green .circle {
            stroke: #4CC790;
        }

        .circular-chart.blue .circle {
            stroke: #3c9ee5;
        }

        .percentage {
            fill: #666;
            font-family: sans-serif;
            font-size: 0.5em;
            text-anchor: middle;
        }

    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }
        .gridmarginleft{
            margin-left:32.2%;
        }
         .divv {
           width:55%;
           margin-left:32.2%;
           text-align:center;
/*          
*/       }
          .donmar{
               margin-left:32.2%;
               width:55%
           }
            @media only screen and (min-device-width:800px) {
                .ahmad{
                    margin-left:140px !important;
                }


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

/****************************************/
.dro{
   width: 100px;
    margin-top: -430px;    margin-left: 28%;
  /*  background-color:#f3e53d;*/
    border:1px solid black;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:AdminDash runat="server" ID="AdminDash" />
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="right">
                <div class="Tilte">
                    <asp:Label ID="Label1" runat="server" Text="Ratings"></asp:Label>
                </div>
                
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="search">
                        <asp:TextBox ID="txtSearch" runat="server" style="border:solid 2px #2b98f0;" placeholder="id,name,..etc"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btnSearch" OnClick="btnSearch_Click1"/>
                    </div>
                    <div>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="dropdown-menu dropdown-item dro" Width="100px" style="width: 100px;
    margin-top: -515px;
    margin-left: 28%;
    border: 1px solid black;">
                            <asp:ListItem Value="All" Selected="True">All</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                             <asp:ListItem Value="4">4</asp:ListItem>
                              <asp:ListItem Value="3">3</asp:ListItem>
                             <asp:ListItem Value="2">2</asp:ListItem>
                              <asp:ListItem Value="1">1</asp:ListItem>                             
                        </asp:DropDownList>
                        <asp:Label ID="num" runat="server" Text="Label" style=" float: right; margin-top: 45px; margin-right: 60px;"></asp:Label>
                    </div>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridTable .table-striped table table-hover" EmptyDataText="No Data Found">
                    <AlternatingRowStyle HorizontalAlign="Center" />
                    <Columns>                        
                        <asp:BoundField DataField="RatingID" HeaderText="#" />
                        <asp:BoundField DataField="Rating1" HeaderText="Rating" />
                        <asp:BoundField DataField="Comment" HeaderText="Comment" />
                        <asp:BoundField DataField="BookingID" HeaderText="# Booking" />
                    
                    </Columns>
                             <EmptyDataRowStyle HorizontalAlign="Center" />
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
