<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="..\..\css\styles.css" type="text/css" rel="stylesheet">
    <!-- Side Bar -->
    <script type="text/javascript" src="navbar.js"></script>
    <!-- Sidebar Slide -->
    <script src="..\..\js\jquery-3.4.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="..\..\css\bootstrap.min.css">
    <!-- Chart JS Link  -->
    <script src="..\..\js\Chart.min.js"></script>
    <!-- Font Awesome -->
    <script src="..\..\js\a076d05399.js"></script>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="..\..\fonts\SourceSansPro">
    <!-- Theme style (Info Box) -->
    <link rel="stylesheet" href="..\..\css\adminlte.min.css">
    <!-- Optional JavaScript Bootstrap -->
    <!-- <script src="..\..\js\jquery-3.3.1.slim.min.js"></script> -->
    <script src="..\..\js\popper.min.js"></script>
    <script src="..\..\js\bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include('..\..\include\functions.php');?>
    <title>Dashboard</title>
</head>
<body>
  <!-- dashboard -->
  <div class="dashboard">
    <!-- side navigation bar -->
    <script>navbar();</script>
    <!--dashboard content-->
    <div class="dashboard_container">
      <div class="dashboard_header navbar topbar mb-4 static-top shadow" >
        <span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span><!--hamburger icon-->
        <h2>Welcome <?php echo $_SESSION['full_name'];?></h2>
        <a class="btn btn-light" href="../../logout.php" style="margin-right:5%">Logout</a>
      </div>
      <div class="dashboard_content" >
      
      <!-- Start of InfoBoxes  -->
      <div class="row">
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?=fac_bk_chp_hod();?></h3>
              <p>Book Chapter</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-bar"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">
              <h3><?=fac_bk_pub_hod();?></h3>
              <p>Book Publication</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-bar"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-warning">
            <div class="inner">
              <h3><?= fac_bk_pat_hod()?></h3>

              <p>Patent</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-pie"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-danger">
            <div class="inner">
              <h3><?=fac_bk_con_hod()?></h3>

              <p>Conferences</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-pie"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?=fac_bk_copy_hod()?></h3>

              <p>Copyright</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-bar"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">
              <h3><?=fac_bk_jour_hod()?></h3>

              <p>Journal</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-bar"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- End of InfoBoxes  -->

      <p  style="text-decoration: underline;"><b>Distribution of data present</b></p>
      <div class="row" style="padding:1px">
          <div class="col-sm-5" id="chart_canvas">
              <canvas id="chart_faculty_details"></canvas>
          </div>
          <div class="col-sm-1"></div>
          <div class="col-sm-6" id="chart_canvas">
              <canvas id="chart_faculty_details_2"></canvas> 
          </div>
      </div>   
          <div class="row" style=" margin-top:10px">
            <div class="col-sm-5" id="chart_canvas">
                <canvas id="chart_faculty_part_2"></canvas>
            </div>
            <div class="col-sm-1"></div>
          <div class="col-sm-6" id="chart_canvas">
              <canvas id="chart_faculty_part_1"></canvas>
          </div>
          
      <?php include 'hod_chart.php';?>
      
      
      </div>
    </div>
  </div>


  <script>
  $('.sub_menu ul').hide();
  $(".sub_menu h3").click(function () {
    $(this).parent(".sub_menu").children("ul").slideToggle("50");
    $(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
  });
  </script>
</body>
</html>