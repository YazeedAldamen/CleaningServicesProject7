<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="conf.aspx.cs" Inherits="CleaningServices1.AdminDashboard.conf" %>

<%@ Register Src="~/AdminDashboard/AdminDash.ascx" TagPrefix="uc1" TagName="AdminDash" %>


<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

   .col-12 {
    flex: 0 0 auto;
    width: 85% !important;
    margin : 0px 48px ;
    
}
        *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

        .cont{
            width:140%; margin-left:-2%;
            border: 2px solid ;
            border-radius:10px ;
        }
body {
  font-family: 'Nunito', sans-serif;
   background: #f4f7f8;
  width:100% !important ;
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

.txtAdd{
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
  color:#2b98f0 ;
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
     
 @media only screen 
  and (min-device-width: 320px) 
  and (max-device-width: 480px) {

         form {
    max-width: 480px;
     margin-left:11%;
  }
          .cont{
            width:100%; margin-left:-5%;
        }
    }
 @media only screen 
  and (min-device-width: 481px) 
  and (max-device-width: 780px){

     
        .cont{
            width:100%; margin-left:5%;
        }
 }
 h1{
    color:#2b98f0 !important ;
        
            font-family:'Times New Roman' !important;
            
 }
 .lol{
     border : 1px solid ;
 }
 #DropDownList1 {
      width: 100%;
      height:40px ;
      font-size:20px ;
  background:url('arrow.png') no-repeat;
  background-position:80% center;
 }
 .lb{
     font-size :20px ;
      font-weight : bold  ;
 }
 .lbl {
     font-size :20px ;
     margin : 0px 35px ; 
 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div  >
            
            <uc1:AdminDash runat="server" ID="AdminDash" />
            <div class="cont">
                  <br />
              
                <div class="row">
    <div class="col-md-12">
      
        <h1>Customer information  </h1>
        
        <br />
        <fieldset>
          
          <legend ><span class="number"></span>  </legend>
          <br />    <br />
            <div class=" row">
            <div class="col-12">
            
          <label class="lb" for="name"> Client Name :</label>
                <asp:Label CssClass="lbl" ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
          <label class="lb"  for="email">Client Phone :</label>
          <asp:Label CssClass="lbl" ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
          <label class="lb"  for="password">Client Email :</label>
          <asp:Label CssClass="lbl" ID="Label4" runat="server" Text="Label"></asp:Label>
                <br />

                 <label class="lb"  for="password">City : </label>
          <asp:Label CssClass="lbl" ID="Label6" runat="server" Text="Label"></asp:Label>

                <br />
          <label  class="lb" for="password">Address : </label>
          <asp:Label CssClass="lbl" ID="Label5" runat="server" Text="Label"></asp:Label>

           
        </div></div>
            <hr />
            <div class=" row">
            <div class="col-12">
             <h1>Choose an employee </h1> 
                <br />
                <h4> to do the job : </h4>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>
        </fieldset>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        
        <br /> <br />
        <asp:HyperLink ID="HyperLink1" runat="server"> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></asp:HyperLink>
        </div>
      </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
