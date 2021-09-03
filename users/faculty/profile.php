<?php
  @session_start();
  $conn = mysqli_connect("localhost", "root", "", "test");
  if (isset($_SESSION['sdrn'])){
      $sdrn = $_SESSION['sdrn'];
      $faculty_name = $_SESSION['full_name'];
  }
?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link href="../../css/styles.css" type="text/css" rel="stylesheet">
      <script type="text/javascript" src="navbar.js"></script>
      <?php include('../../include/scripts.php');?>
      <title>Chapter</title>
  </head>
  <body>
    <!-- dashboard -->
    <div class="dashboard">
      <!-- side navigation bar -->
      <script>navbar();</script>
      <!--dashboard content-->
      <div class="dashboard_container">
      <script>header();</script>
      <div class="container-fluid">
  <div class="row">
    <div class="col" style="text-align: center; padding-top:2%" >
      <p ><h2 >Aditi Chhabria</h2></p>
      <p><h4>Assistant professor</h4></p>
    </div>
    <div class="col">
      <img src="../../include/images/hi.jpg" alt="image" height="200px" width="200px" class="rounded-circle" align="right">
    </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col" style="border-left:2px solid grey; border-radius:20px">
      <p class="heading" style="text-decoration: underline;"><b>Personal Details</b></p>
      <table>
        <tr><th>Gender</th><td>Female</td></tr>
        <tr><th>Mobile No. &nbsp;</th><td>+91 1231231231</td></tr>
        <tr><th>Address</th><td>ABCD Building, XYZ Colony, City West</td></tr>
      </table>
    </div>

    <div class="col" style="border-left:2px solid grey; border-radius:20px">
      <p class="heading" style="text-decoration: underline;"><b>Profesional Details</b></p>
      <table>
        <tr><th>Department</th><td>Computer Engineering</td></tr>
        <tr><th>DOJ</th><td>yyyy-mm-dd</td></tr>
        <tr><th>Area of Specialisation &nbsp;&nbsp;</th><td>Data Warehouse and Mining</td></tr>
        <tr><th>Experience</th><td>15</td></tr>
      </table>
    </div>
  </div>
  <br><br>

  <div class="row">



      
    <div class="col">
      <div class="row" style="border-left:2px solid grey; border-radius:20px">
      <div class="col">
        <p class="heading" style="text-decoration: underline;"><b>Education</b></p>
        <table>
        <tr><th>Degree</th><td>Phd</td></tr>
        <tr><th>Qualification &nbsp;&nbsp;</th><td>Pursuing</td></tr>
        <tr><th>University</th><td>Rajasthan</td></tr>
      </table>
      </div></div>
        <br> <br>
      <div class="row" style="border-left:2px solid grey; border-radius:20px">
        <div class="col">
        <p class="heading"><b>MY RECENT WORKS</b></p>
        <table>
        <tr><th>Patents</th><td>1</td></tr>
        <tr><th>Book Chapter </th><td>1</td></tr>
        <tr><th>Workshop</th><td>Organised: 10  Attended:12</td></tr>
        <tr><th>Talks Delivered &nbsp;&nbsp;</th><td>9</td></tr>
      </table>
        </div></div>
    </div>
      
    
    
      
      
  </div>


</div>

      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  </body>
  <script>
  $('.sub_menu ul').hide();
  $(".sub_menu h3").click(function () {
    $(this).parent(".sub_menu").children("ul").slideToggle("50");
    $(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
  });
  </script>
  </html>
