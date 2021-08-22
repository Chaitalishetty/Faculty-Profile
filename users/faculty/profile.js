function profile() {
  document.querySelector(".dashboard_content").innerHTML = `
  <div class="container-fluid">
  <div class="row">
    <div class="col" style="text-align: center; padding-top:2%" >
      <p ><h2 >Aditi Chhabria</h2></p>
      <p><h4>Assistant professor</h4></p>
    </div>
    <div class="col">
      <img src="hi.jpg" alt="image" height="200px" width="200px" class="rounded-circle" align="right">
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
  `;
  //   <!DOCTYPE html>
  // <html lang="en">
  // <head>
  //     <meta charset="UTF-8">
  //     <meta http-equiv="X-UA-Compatible" content="IE=edge">
  //     <link href="styles.css" type="text/css" rel="stylesheet">
  //     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  //   <!-- Google Font: Source Sans Pro -->
  //   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  //   <!-- Font Awesome -->
  //   <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  //   <!-- Ionicons -->
  //   <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  //   <!-- Tempusdominus Bootstrap 4 -->
  //   <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  //   <!-- iCheck -->
  //   <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  //   <!-- JQVMap -->
  //   <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  //   <!-- Theme style -->
  //   <link rel="stylesheet" href="dist/css/adminlte.min.css">
  //   <!-- overlayScrollbars -->
  //   <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  //   <!-- Daterange picker -->
  //   <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  //   <!-- summernote -->
  //   <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  //     <!-- Bootstrap CSS -->
  //     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  //     <meta name="viewport" content="width=device-width, initial-scale=1.0">
  //     <script type="text/javascript" src="publication.js"></script>
  //     <script type="text/javascript" src="home.js"></script>
  //     <script type="text/javascript" src="chapter.js"></script>
  //     <script type="text/javascript" src="profile.js"></script>
  //     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  //         <!-- Bootstrap Links  -->
  //         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
  //     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
  //     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
  //     <!-- Chart JS Link  -->
  //     <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script> 
  //     <title>Dashboard</title>
  //     <style>

  //       .row img {
  //         width:100%;
  //         height:100%;
  //         object-fit:cover;
  //         cursor:pointer;
  //         border: 1px solid black;

  //       }
  //     </style>
  // </head>

  // <body>

  //   <!-- dashboard -->
  //   <div class="dashboard">
  //     <!-- side navigation bar -->

  //         <form action="backend.php" method="post" enctype="multipart/form-data">
  //         <?php
  //           $conn = mysqli_connect("localhost", "root", "","test");
  //           if ($conn->connect_error)  {
  //             die("Connection failed: " . $conn->connect_error);
  //           }
  //           $final_query= "select `profile_photo`,`image_type` from `faculty` WHERE Sdrn= '007' ";
  //           $result = mysqli_query($conn,$final_query);
  //           if(mysqli_num_rows($result) > 0) {
  //             $row = mysqli_fetch_assoc($result);
  //             $profile_photo = base64_encode($row['profile_photo']);
  //             $image_type = $row['image_type'];

  //           }
  //         ?>
  //         <br><br><br>
  //           <div class="row" id="logo" style="height:200px; width:200px;">
  //             <label for="profile_photo" >Photo
  //               <?php  echo '<img id="avatar" alt="hi.jpg" src="data:image/jpg;charset=utf8;base64,'.$row['profile_photo'].'"/>'; ?>
  //             </label>
  //             <input type="file" style="display:none" name="profile_photo" id="profile_photo" onchange="loadFile(event)" accept="image/png, image/gif, image/jpeg" />
  //           </div>
  //           <input class="btn btn-success" type="submit" name="submit" id="submit" value="Submit">

  //         </form>








  //       </div>
  //     </div>
  //   </div>
  // </body>
  // <script>
  // function openNav() {
  //   const mediaQuery=window.matchMedia("(max-width:970px)");
  //   if (mediaQuery.matches){
  //     document.querySelector('.nav_dashboard').style.width = "250px";
  //   }
  // }

  // function closeNav() {
  //   const mediaQuery=window.matchMedia("(max-width:970px)");
  //   if (mediaQuery.matches){
  //     document.querySelector(".nav_dashboard").style.width = "0";
  //     document.querySelector(".dashboard_container").style.marginLeft= "0";
  //     document.querySelector(".dashboard_container").style.width = "100vw";
  //   }
  // }

  //   var loadFile = function(event) {
  //     var output = document.getElementById('avatar');
  //     output.src = URL.createObjectURL(event.target.files[0]);
  //     output.onload = function() {
  //       URL.revokeObjectURL(output.src)
  //     }
  //   };
  // </script>
  // </html>
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
  }
}
