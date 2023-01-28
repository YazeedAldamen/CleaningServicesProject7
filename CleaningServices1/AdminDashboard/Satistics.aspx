<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Satistics.aspx.cs" Inherits="CleaningServices1.AdminDashboard.Satistics" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
       <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
   
    <meta name="description" content="Ela Admin - HTML5 Admin Template"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

   <%-- <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png"/>
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png"/>--%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css"//>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css"/>
    <link href="AdminCSS/css/cs-skin-elastic.css" rel="stylesheet" />
    <link href="AdminCSS/css/style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet"/>
    <style>
       


        /*****************************/
        *{
            font-family:'Times New Roman';
            font-style:italic;
        }
        .bg-flat-color-b{
  color: #2b98f0; }

.bg-flat-color-p {
  color: #ab8ce4; }

.bg-flat-color-y {
  color: #f3e53d; }

.bg-flat-color-4 {
  background: #fb9678 !important; }


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
       @media only screen and (min-device-width:0px) and (max-device-width:480px) {

       }

       @media (min-width: 481px) and (max-width:768px) {
           .divv {
    width: 55%;
    margin-left: 22.2%;
    text-align: center;
}

           .gridmarginleft{
            margin-left:17%;
        }
           .donmar{
               margin-left:10%;
               width:80%;
               
           }
       }

       

        .right{
           /* margin-top:40px;*/
            width:95%;
            margin-left:2.5%;
        /*  width:80%;
            margin-left:20%;*/
        }
         .Tilte{
            width:80%;
            margin-left:20%;
            text-align:center;
            font-family:'Times New Roman';
            font-size:35px;
            font-style:italic;
            font-weight:bold;
            color:#2b98f0 ;
            margin-top:70px;
        }
        /*****************************/
    </style>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="AdminCSS/js/main.js"></script>
    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>
    <script src="AdminCSS/js/init/chartjs-init.js"></script>
    <!--Flot Chart-->
    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>
    <script src="AdminCSS/js/init/flot-chart-init.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:AdminDash runat="server" ID="AdminDash" />
            <div class="right">
                          <div class="Tilte">
                    <asp:Label ID="Label1" runat="server" Text="Admin Dashboard"></asp:Label>
                </div>
                
             <div runat="server" id="ADMIN">
    <div id="right-panel" class="right-panel">
      
      
        <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
                <!-- Widgets  -->
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-b">
                                        <i class="fa-regular fa-money-bill-1" style=" color: #2b98f0;"></i>
<%--                                        <i class="fa-regular fa-money-bill"></i>--%>
<%--                                        <i class="fa-solid fa-money-bill"></i>--%>
<%--                                        <i class="fa-solid fa-users-between-lines"></i>--%>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Revenue" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px; ">Revenue</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-p">
                                       <i class="fa-solid fa-hand-holding-dollar" style="color: #ab8ce4;"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Expense" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Expense</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-y">
                                        <i class="fa-solid fa-wallet" style="color: #f3e53d;"></i>
<%--                                       <i class="fa-solid fa-hand-holding-dollar"></i>--%>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Profit" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Profit</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                   <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-y">
                                      <i class="fa-solid fa-people-carry-box" style=" color: #2b98f0;" ></i>

                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Employees" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Employees</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-b">                                        
                                        <i class="fa-solid fa-users-between-lines" style="color: #ab8ce4;"></i>

                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Clients" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Clients</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-p">
                                    <i class="fa-regular fa-calendar" style="color: #f3e53d;"></i>                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Bookings" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Bookings</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                  


                <!--  /Traffic -->
     <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mb-3"> Booking Chart </h4>
                                <canvas id="singelBarChart" style="height:470px;"></canvas>
                            </div>
                        </div>
                    </div><!-- /# column -->
                    <%--<div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mb-3">Booking Chart </h4>
                                <canvas id="pieChart1"></canvas>
                            </div>
                        </div>
                    </div>--%>


                      <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mb-3">Services Chart </h4>
                                <canvas id="pieChart"></canvas>
                            </div>
                        </div>
                    </div><!-- /# column -->
    </div></div></div>
                        </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
       
    </div>
    <!-- /#right-panel -->


        </div>
        </div>
        </div>
        <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
        <script>
            var chartData;
        </script>

        <asp:Literal ID="book" runat="server"></asp:Literal>
       <script>
           //var W = document.getElementById(label1).value;
           //var xx = label1.Text
           // single bar chart
           var ctx = document.getElementById("singelBarChart");
           ctx.height = 150;
           var myChart = new Chart(ctx, {
               type: 'bar',
               data: {
                   labels: ["Request", "Progressing", "Done"],
                   datasets: [
                       {
                           label: "Bookings",
                           data: chartData,
                           borderColor: "#f3e53d",
                           borderWidth: "0",
                           backgroundColor: "#f3e53d"
                          //#f3e53d
                          //2b98f0
                       }
                   ]
               },
               options: {
                   scales: {
                       yAxes: [{
                           ticks: {
                               beginAtZero: true
                           }
                       }]
                   }
               }
           });
       </script>
       
        <script>
            var piechart;
        </script>
        <asp:Literal ID="Pirch" runat="server"></asp:Literal>
        <script>
            var ctx = document.getElementById("pieChart");
            ctx.height = 300;
            var myChart = new Chart(ctx, {
                type: 'pie',
                data: {
                    datasets: [{
                        data: piechart,
                        backgroundColor: [
                            "#2b98f0",
                            "rgba(0, 194, 146,0.7)",
                            "#f3e53d",
                            "#ab8ce4"
                        ],
                        hoverBackgroundColor: [
                            "#a0d0f8",
                            "#99ffe6",
                            "#f9f19f",
                            "#e1d6f5"
                        ]

                    }],
                    labels: [
                        "Carpets",
                        "Bedroom",
                        "Car",
                        "Pool"
                    ]
                },
                options: {
                    responsive: true
                }
            });
        </script>



        <!--*********************************************************-->
        <%-- <script>
             var piechart1;
         </script>
        <asp:Literal ID="Pirch1" runat="server"></asp:Literal>
        <script>
            var ctx = document.getElementById("pieChart1");
            ctx.height = 300;
            var myChart = new Chart(ctx, {
                type: 'pie',
                data: {
                    datasets: [{
                        data: piechart1,
                        backgroundColor: [
                            "#2b98f0",
                            "#f3e53d",
                            "#ab8ce4"
                        ],
                        hoverBackgroundColor: [
                            "#a0d0f8",
                            "#f9f19f",
                            "#e1d6f5"
                        ]

                    }],
                    labels: [
                        "Progress",
                        "Done",
                        "Request"
                    ]
                },
                options: {
                    responsive: true
                }
            });
        </script>--%>
    </form>
   
</body>
</html>
