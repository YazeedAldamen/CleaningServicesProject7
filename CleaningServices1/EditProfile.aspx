<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="CleaningServices1.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

     <style>

      body{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 70%;
    height: 100%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
    text-decoration:none;
    
}
a:hover { text-decoration: none; }
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>




              <div>

            <div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-3">
                        <div class="profile-img">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="...">
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="profile-head">
                                    <h5 runat="server" id="hName">
                                        
                                    </h5>
                                    <h6>
                                        Housekeeper
                                    </h6>
                                    <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="EmployeeProfile.aspx" role="tab" aria-controls="profile" aria-selected="false">Tasks</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="Home" data-toggle="tab" href="Default.aspx" role="tab" aria-controls="profile" aria-selected="false">Home</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4" style="display:inline-block">
                        <%--  <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>--%>
                        <%--                        <a class="profile-edit-btn" href="Profile.aspx" OnClick="Save_click" runat="server">Save</a>--%>
                        <div class="col-md-2" style="display:inline-block">
                            <asp:Button ID="Save" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="Save_click" />
                        </div>
                        <div class="col-md-2" style="display:inline-block">
                            <asp:Button ID="cancel" CssClass="btn btn-secondary" runat="server" Text="Cancel" OnClick="cancel_Click" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">   
                            <p>SKILLS</p>
                            <span>Hard Worker</span><br />
                            <span>Commitment</span><br />
                            <span>Reliably</span><br />
                            <span>Always in time</span><br />
                            <span>Very good communication skills</span><br />
                           
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p id="txtID" runat="server"></p>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
<%--                                                <p id="txtName" runat="server"></p>--%>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
<%--                                                <p id="txtEmail" runat="server"></p>--%>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                               <%-- <p id="txtPhone" runat="server"></p>--%>
                                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                     <%--   <div class="row">
                                            <div class="col-md-6">
                                                <label>Password</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                            </div>
                                        </div>--%>
                                      <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Tasks</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p id="txtTotal" runat="server"></p>
                                            </div>
                                        </div>
                            </div>
                      
                        </div>
                    </div>
                </div>
            </form>           
        </div>

        </div>




        </div>
    </form>
</body>
</html>
