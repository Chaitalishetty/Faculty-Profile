<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="../../css/styles.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="navbar.js"></script>
    <?php include('../../include/scripts.php');?>
    <?php include('../../include/functions.php');?>
    <title>Dashboard</title>
</head>
<body>
  <!-- dashboard -->
  <div class="dashboard">
    <!-- side navigation bar -->
    <script>navbar();</script>
    <!--dashboard content-->
    <div class="dashboard_container">
      <div class="dashboard_header">
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span><!--hamburger icon-->
        <h2>Dashboard</h2>
        <a class="btn btn-light" href="../../logout.php" style="margin-left:70%">Logout</a>
      </div>
      <div class="dashboard_content" style="width:90%; background-color:#fff; margin-left:1rem; margin-top:0">
      
      <!-- Start of InfoBoxes  -->
      <div class="row">
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?=fac_bk_chp();?></h3>
              <p>Book Chapter</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">
              <h3><?=fac_bk_pub();?></h3>
              <p>Book Publication</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-warning">
            <div class="inner">
              <h3>4</h3>

              <p>Patent</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-danger">
            <div class="inner">
              <h3>6</h3>

              <p>Conferences</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3>6</h3>

              <p>Copyright</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">
              <h3>5</h3>

              <p>Journal</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
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
      <?php include 'hod_chart.php';?>

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
