<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookingPage.aspx.cs" Inherits="CleaningServices1.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">


         <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="booking.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/72467fec0a.js" crossorigin="anonymous"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
        
                <div style="height: 150px"></div>
                <div id="booking" class="section">
                    <div class="section-center">
                        <div class="container">
                            <div class="row">
                                <div class="booking-form">
                                    <div class="form-header">
                                        <h1>Book a Cleaning</h1>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <span class="form-label">Name</span>

                                                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter your name" required> </asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <span class="form-label">Email</span>
                                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email" placeholder="Enter your email" required></asp:TextBox>
                                                <%--                                    <asp:Label ID="lblEmailCatch" Text="Email Already Exists" runat="server" Visible="false"/>--%>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <span class="form-label">Phone</span>
                                        <asp:TextBox ID="txtPhone" runat="server" class="form-control" TextMode="Phone" placeholder="Enter your phone number" required></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <span class="form-label">Location</span>
                                                <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Enter your Address" required></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="col-sm-6">

                                            <div class="form-group">
                                                <span class="form-label">Street</span>
                                                <asp:TextBox ID="txtStreet" runat="server" class="form-control" placeholder="Street" required></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>

                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>

                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group row ">

                                                        <%--                                                        <span class="form-label">Number of Bedrooms</span>--%>
                                                        <asp:CheckBox ID="checkboxBedrooms" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Bedrooms" ForeColor="White" class="col-sm-6" />
                                                        <asp:TextBox ID="txtboxBedrooms" runat="server" Enabled="false" TextMode="Number" min="1" max="12" Text="0" AutoPostBack="True" OnTextChanged="txtboxBedrooms_TextChanged" class="col-sm-6" Style="max-width: 70px"></asp:TextBox>

                                                    </div>
                                                </div>
                                      
                                            <div class="col-sm-6">
                                                <div class="form-group row">

<%--                                                    <span class="form-label">Number Of Bathrooms</span>--%>
                                                    <asp:CheckBox ID="checkboxBathrooms" runat="server" AutoPostBack="True" OnCheckedChanged="checkboxBathrooms_CheckedChanged" Text="Carpets" ForeColor="White" class="col-sm-6"/>
                                                    <asp:TextBox ID="txtboxBathrooms" runat="server" Enabled="false" TextMode="Number" min="1" max="12" Text="0" AutoPostBack="True" OnTextChanged="txtboxBathrooms_TextChanged" class="col-sm-6" style="max-width:70px"></asp:TextBox>

                                                </div>
                                            </div>
                                            </div>
                                             <div class="row">
                                                <div class="col-sm-6 ">
                                                    <div class="form-group row">

<%--                                                        <span class="form-label" style="color:white">Cars</span>--%>
                                                        <asp:CheckBox ID="checkboxCars" runat="server" AutoPostBack="True"  Text="Cars" OnCheckedChanged="checkboxCars_CheckedChanged" ForeColor="White" class="col-sm-6"/>
                  
                                                        <asp:TextBox ID="txtboxCars" runat="server" Enabled="false" TextMode="Number" min="1" max="12" Text="0" AutoPostBack="True" OnTextChanged="txtboxCars_TextChanged" class="col-sm-6" style="max-width:70px"></asp:TextBox>

                                                    </div>
                                                </div>
                                                           <div class="col-sm-6 ">
                                                    <div class="form-group row">

<%--                                                        <span class="form-label">Pools</span>--%>
                                                        <asp:CheckBox ID="checkboxPools" runat="server" AutoPostBack="True"  Text="Pools" OnCheckedChanged="checkboxPools_CheckedChanged"  ForeColor="White" class="col-sm-6"/>
                                                        <asp:TextBox ID="txtboxPools" runat="server" Enabled="false" TextMode="Number" min="1" max="12" Text="0" AutoPostBack="True" OnTextChanged="txtboxPools_TextChanged" class="col-sm-6" style="max-width:70px"></asp:TextBox>

                                                    </div>
                                                </div>
                                                </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <span class="form-label">City</span>
                                                <asp:DropDownList ID="cityDropdown" runat="server" CssClass="form-control ">
                                                    <asp:ListItem Value="1">Irbid</asp:ListItem>
                                                    <asp:ListItem Value="2">Amman</asp:ListItem>
                                                    <asp:ListItem Value="3">Jarash</asp:ListItem>
                                                    <asp:ListItem Value="4">Ajloun</asp:ListItem>
                                                    <asp:ListItem Value="5">Zarqa</asp:ListItem>
                                                    <asp:ListItem Value="6">Mafraq</asp:ListItem>
                                                    <asp:ListItem Value="7">Balqa</asp:ListItem>
                                                    <asp:ListItem Value="8">Aqaba</asp:ListItem>
                                                    <asp:ListItem Value="9">Karak</asp:ListItem>
                                                    <asp:ListItem Value="10">Tafeleh</asp:ListItem>
                                                    <asp:ListItem Value="11">Maan</asp:ListItem>
                                                    <asp:ListItem Value="12">Madaba</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <span class="form-label">Date</span>
                                                <input id="txtCalender" class="form-control" type="date" runat="server" required />
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <span class="form-label">Payment</span>
                                            <asp:TextBox ID="txtCard" runat="server" class="form-control" placeholder="Card Number" required></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <span class="form-label">&nbsp;</span>
                                            <asp:TextBox ID="txtCSC" runat="server" class="form-control" placeholder="CSC" required></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <span class="form-label">&nbsp;</span>
                                            <asp:TextBox ID="txtExpiration" runat="server" class="form-control" placeholder="Expiration" required></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="form-btn">
                                        <asp:Button ID="btnBook" runat="server" Text="Book Now" class="submit-btn" OnClick="btnBook_Click" />
                                    </div>
                                    <%--  <div class="form-btn col-sm-12 d-flex justify-content-center">
                            <button class="submit-btn mt-3 " style="background-color:#2b98f0"> <a href="Default.aspx" style="color:black">Back To Home</a></button>
                        </div>--%>
                                </div>
                                <div>
                                    <div style="height: 100px"></div>
                                    <div class="card border-warning mb-3" style="max-width: 18rem; min-width: 15rem; max-height: 60%;">
                                        <div class="card-header">Booking Summary</div>
                                        <div class="card-body text-warning">
                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                <ContentTemplate>
                                                    <table>
                                                        <tr>
                                                            <td style="width:50%"> <i class="fa-solid fa-bed" style="margin-right: 10px"></td>
                                                            <td style="width:50%"><asp:Label ID="lblBedrooms" Text="Bedrooms" runat="server" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:50%"> <i class="fa-solid fa-rug" style="margin-right: 10px"></i></td>
                                                            <td style="width:50%"><asp:Label ID="lblBathrooms" Text="Carpets" runat="server" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td style="width:50%"> <i class="fa-solid fa-car"></i></td>
                                                            <td style="width:50%"><asp:Label ID="lblCars" Text="Cars" runat="server" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td style="width:50%"><i class="fa-solid fa-water-ladder"></i> </td>
                                                            <td style="width:50%"><asp:Label ID="lblPools" Text="Pools" runat="server" /></td>
                                                        </tr>
                                                    </table>
                                               
                                                         </ContentTemplate>
                                            </asp:UpdatePanel>
                                                    <hr />
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                    <div style="display: flex; justify-content: space-between">
                                                        <label>Total</label><asp:Label ID="lblSubTotal" Text="0" runat="server" />
                                                    </div>
                                                    </ContentTemplate>
                                            </asp:UpdatePanel>
                                           
                                           
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <div style="height: 100px">
                </div>
         
        <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <script defer>
            function pass() {
                Swal.fire({
                    icon: 'success',
                    title: 'Booked Successfully! Youll be contacted by our team',
                    type: 'success',
                    icon: 'success',
                    button: 'Ok',


                }).then(function () {
                    window.location = "https://localhost:44381/Default";
                });


            }
            function wass() {

                Swal.fire({

                    text: 'Please Choose at least One Service',
                    type: 'warning',
                    icon: 'warning',
                    button: 'Ok',

                });

            }
        </script>
        <script>
            var today = new Date().toISOString().split('T')[0];
            document.getElementById("txtCalender").setAttribute('min', today);
        </script>
</asp:Content>
