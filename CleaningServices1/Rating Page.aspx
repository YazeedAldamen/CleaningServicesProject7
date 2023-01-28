<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rating Page.aspx.cs" Inherits="CleaningServices1.scss.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style>
        .card {
            border-radius: .7rem;
        }
        body {
            background-color: black ;
        }
        
        .section1 {

            margin-top:150px;
        }

        @media only screen and (min-device-width: 481px) and (max-device-width:768px) {

            .section1 {
                margin-top: 30px;
            }
        }

        @media only screen and (min-device-width: 0px) and (max-device-width:480px) {

            .section1 {
                margin-top: 20px;
            }

        }

    </style>

   

    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <section class="section1" style="color: #000; background-color: #f3f2f2; ">
  <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-10 col-xl-8 text-center">
        <h3 class="fw-bold mb-4">Reviews and Testimonials</h3>
        <p class="mb-4 pb-2 mb-md-5 pb-md-0">
         Our customers are at the heart of everything we do, and we are thrilled to have received so many positive reviews and testimonials. We have compiled a selection of these testimonials for you to read, so you can see for yourself the level of service and quality of work you can expect when you choose [Company Name]. Thank you to all of our loyal customers for your support and feedback!
        </p>
      </div>
    </div>
      
    <div class="row text-center mb-4" id="testmonials" runat="server">
       <div class="col-md-4 mb-4 mb-md-0">
        <div class="card">
          <div class="card-body py-4 mt-2">
            <div class="d-flex justify-content-center mb-4">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(10).webp"
                class="rounded-circle shadow-1-strong" width="100" height="100" />
            </div>
            <h5 class="font-weight-bold">Teresa May</h5>
            <h6 class="font-weight-bold my-3">Founder at ET Company</h6>
            <ul class="list-unstyled d-flex justify-content-center">
              <li>
                <i class="fas fa-star fa-sm text-info"></i>
              </li>
              <li>
                <i class="fas fa-star fa-sm text-info"></i>
              </li>
              <li>
                <i class="fas fa-star fa-sm text-info"></i>
              </li>
              <li>
                <i class="fas fa-star fa-sm text-info"></i>
              </li>
              <li>
                <i class="fas fa-star-half-alt fa-sm text-info"></i>
              </li>
            </ul>
            <p class="mb-2">
              <i class="fas fa-quote-left pe-2"></i>Lorem ipsum dolor sit amet,
              consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat
              ad velit ab hic tenetur.
            </p>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>
</asp:Content>
