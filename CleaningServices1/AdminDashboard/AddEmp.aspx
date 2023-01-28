<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmp.aspx.cs" Inherits="CleaningServices1.AdminDashboard.AddEmp" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Employee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        * {
            font-family: 'Times New Roman';
        }

        .col-12 {
            flex: 0 0 auto;
            width: 85% !important;
            margin: 0px 48px;
        }

        *, *:before, *:after {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        .cont {
            width: 140%;
            margin-left: 12%;
            border: 2px solid;
            border-radius: 10px;
        }

        body {
            font-family: 'Nunito', sans-serif;
            background: #f4f7f8;
            width: 100% !important;
        }

        form {
            margin: 10px auto;
            padding: 10px 20px;
            border-radius: 8px;
        }

        h1 {
            margin: 0 0 30px 0;
            text-align: center;
        }

        .txtAdd {
            background: rgba(255,255,255,0.1);
            border: none;
            font-size: 16px;
            height: auto;
            margin: 0;
            outline: 0;
            padding: 15px;
            width: 100%;
            background-color: #e8eeef;
            color: #8a97a0;
            box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
            margin-bottom: 30px;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin: 0 4px 8px 0;
        }

        select {
            padding: 6px;
            height: 32px;
            border-radius: 2px;
        }

        #Button1 {
            padding: 10px 39px 18px 39px;
            color: black;
            background-color: #f3e53d;
            font-size: 23px;
            text-align: center;
            font-style: normal;
            border-radius: 5px;
            width: 85%;
            border: 1px solid;
            border-width: 1px 1px 3px;
            box-shadow: 0 -1px 0 rgb(255 255 255 / 10%) inset;
            margin-bottom: 10px;
            margin: 21px 45px;
        }

        fieldset {
            margin-bottom: 30px;
            border: none;
        }

        legend {
            font-size: 1.4em;
            margin-bottom: 10px;
            color: #2b98f0;
            margin: 0px 47px !important;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

            label.light {
                font-weight: 300;
                display: inline;
            }

        /*.number {
      background-color: #2b98f0;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;

}*/

        @media screen and (min-width: 480px) {

            form {
                max-width: 480px;
            }
        }

        @media only screen and (min-device-width: 320px) and (max-device-width: 480px) {

            form {
                max-width: 480px;
                margin-left: 11%;
            }

            .cont {
                width: 100%;
                margin-left: -5%;
            }
        }

        @media only screen and (min-device-width: 481px) and (max-device-width: 780px) {


            .cont {
                width: 100%;
                margin-left: 5%;
            }
        }

        h1 {
            color: #2b98f0 !important;
            font-family: 'Times New Roman' !important;
        }

        .lol {
            border: 1px solid;
        }

        .loading {
            z-index: 1;
            position: absolute;
            top: 50%;
            left: 50%;
        }
    </style>
    <script src="alert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css" />

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire(
                'Done!',
                'Your New Employee Will Be Notified',
                'success'
            )
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>

                <uc1:AdminDash runat="server" ID="AdminDash" />

                <div class="cont">
                    <br />

                    <div class="row">
                        <div class="col-md-12">

                            <h1>Add Employees </h1>

                            <br />
                            <fieldset>

                                <legend><span class="number"></span>Employee information :</legend>
                                <br />
                                <br />
                                <div class=" row">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="col-12">
                                                <label for="name">Name:</label>
                                                <asp:TextBox CssClass="txtAdd" ID="txtName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                                                    CssClass="text-danger" ErrorMessage=" The Name field is required." ValidationGroup="EMP" />
                                                <br />
                                                <label for="email">Email:</label>
                                                <asp:TextBox CssClass="txtAdd" ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                                    CssClass="text-danger" ErrorMessage=" The email field is required." ValidationGroup="EMP" />
                                                <br />
                                                <label for="password" >Password:</label>
                                                <asp:TextBox CssClass="txtAdd" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                                                    CssClass="text-danger" ErrorMessage=" The Password field is required." ValidationGroup="EMP" />
                                                <asp:RegularExpressionValidator ErrorMessage="*" ControlToValidate="txtPassword" ValidationExpression="^(?=.[A-Z])(?=.[^a-zA-Z0-9])(?=.*[0-9]).{6,}$" runat="server" ForeColor="Red" />
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


                                                <br />


                                                <label for="password">Phone :</label>
                                                <asp:TextBox CssClass="txtAdd" ID="txtphone" runat="server" ForeColor="Red"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtphone"
                                                    CssClass="text-danger" ErrorMessage=" The Phone field is required." ValidationGroup="EMP" />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtPhone" runat="server" CssClass="text-danger" ErrorMessage="Must be a jordanian phone " ValidationExpression="((079)|(078)|(077)){1}[0-9]{7}" ValidationGroup="EMP"></asp:RegularExpressionValidator>

                                                <br />

                                                <label for="password">Selection Gender  :</label>
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">


                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Selection Gender" ControlToValidate="RadioButtonList1" ValidationGroup="EMP"></asp:RequiredFieldValidator>
                                            </div>
                                            </div> 
            
           <%-- <div class=" row">
            <div class="col-12">
          
                </div>--%>
                            </fieldset>

                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" ValidationGroup="EMP" />
                            </ContentTemplate>
        </asp:UpdatePanel>
                                   <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <img src="../images/Loading_2.gif" class="loading" />
    </ProgressTemplate>
</asp:UpdateProgress>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
