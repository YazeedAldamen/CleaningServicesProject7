<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ratingPage.aspx.cs" Inherits="CleaningServices1.ratingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" />
    <link href="rating.css" rel="stylesheet" />
    <script src="rating.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center mt-100">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body text-center">
                                <span id="rate" class="myratings" runat="server">4.5</span>
                                <h4 class="mt-1">Rate us</h4>

                                <fieldset class="rating">
                                    <input type="radio" id="star5" name="rating" value="5" runat="server" /><label class="full" for="star5" title="Awesome - 5 stars"></label>
                                    <input type="radio" id="star4" name="rating" value="4" runat="server" /><label class="full" for="star4" title="Pretty good - 4 stars"></label>
                                    <input type="radio" id="star3" name="rating" value="3" runat="server" /><label class="full" for="star3" title="Meh - 3 stars"></label>
                                    <input type="radio" id="star2" name="rating" value="2" runat="server" /><label class="full" for="star2" title="Kinda bad - 2 stars"></label>
                                    <input type="radio" id="star1" name="rating" value="1" runat="server" /><label class="full" for="star1" title="Sucks big time - 1 star"></label>
                                </fieldset>
                                <h4>Leave A Comment</h4>
                                <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" CssClass="form-control" Style="width: 100%" Rows="4"></asp:TextBox>
                            </div>

                            <div class="container d-flex justify-content-center mb-3">
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Button CssClass="btn btn-primary" ID="btnRate" runat="server" Text="Rate" OnClick="btnRate_Click" />
                                    </div>
                                </div>
                        </div>




                    </div>

                </div>
            </div>
        </div>
        </div>
        <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
       <script >
           function pass() {
               Swal.fire({
                   icon: 'success',
                   title: 'Thank You For Choosing Us',
                   type: 'success',
                   icon: 'success',
                   button: 'Ok',


               }).then(function () {
                   window.location = "https://localhost:44381/Default";
               });
           }
           function wass() {
               Swal.fire({
                   icon: 'warning',
                   title: 'Please Choose A Rating',
                   type: 'warning',
                   icon: 'warning',
                   button: 'Ok',


               })
           }
           function exist() {
               Swal.fire({
                   icon: 'warning',
                   title: 'You\'ve already voted',
                   type: 'warning',
                   icon: 'warning',
                   button: 'ok',


               }).then(function () {
                   window.location = "https://localhost:44381/Default";
               });
           }
       </script>
    </form>
     
</body>
</html>
