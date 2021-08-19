
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link href="styles.css" type="text/css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="js/plugins/fontawesome-free/css/fontawesome.min.css">
  <link rel="stylesheet" href="js/plugins/fontawesome-free/css/all.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="js/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="js/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="js/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="js/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="js/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="js/plugins/summernote/summernote-bs4.min.css">
  <!-- Bootstrap Links  -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/plugins/popper/popper.min.js" ></script>
  <script src="js/plugins/bootstrap/js/bootstrap.min.js"></script>
  <!-- Chart JS Link  -->
  <script src="js/plugins/chart.js/Chart.min.js"></script>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <title>Dashboard</title>
</head>
<body>
  <!-- dashboard -->
  <div class="dashboard">
    <!-- side navigation bar -->
    <nav class="nav_dashboard" style="clear:left">  
      <span style="font-size:40px;cursor:pointer;margin: 10px;" onclick="closeNav()">&times;</span><!--cross icon-->
        <div class="nav_img" style="text-align:center;margin: 20px 0px;">
          <img src="logo.png" style="width:60px"/>
        </div>
        <div>
          <ul>
            <li><a href="dashboard.php" id="home">Home</a></li>
            <li><a href="#" onclick=profile(); id="profile">Profile</a></li>
            <li><h3><i class="fa fa-book"></i>&nbsp;Publications</h3></li>
            <li><a href="#" onclick=chapter(); id="chapter">Book Chapter</a></li>
            <li><a href="#" onclick=publication();>Book Publications</a></li> 
            <li><a href="#" onclick=patent();>Patent</a></li> 
            <li><a href="#" onclick=copyright();>Copyright</a></li>
            <li><a href="#" onclick=journal();>Journal</a></li> 
            <li><a href="#" onclick=conference();>Conference</a></li>
            <!-- <li><a href="#">Show all records</a></li>     -->
          </ul>
        </div>
    </nav>
    <!--dashboard content-->
    <div class="dashboard_container">
      <div class="dashboard_header">
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span><!--hamburger icon-->
        <h2>Dashboard</h2>
      </div>
      <div class="dashboard_content" style="width:90%; background-color:#fff; margin-left:0rem; margin-top:0">
      
      <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>3</h3>

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
                <h3>5</h3>

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

        <br><br>

        <div class="col-sm-6" style="border-left:2px solid grey; border-radius:20px">
        <p class="heading" style="text-decoration: underline;"><b>ACHIEVEMENTS</b></p>
          <canvas id="chart_faculty_details"></canvas>
          <?php include 'faculty_details.php'; ?> 
        </div>
      </div>
    </div>
  </div>
  <!-- changes -->
  
  <?php
      include 'publication.php';
  ?>
  <script type="text/javascript" src="patent.js"></script>
  <script type="text/javascript" src="copyright.js"></script>
  <script type="text/javascript" src="journal.js"></script>
  <script type="text/javascript" src="conference.js"></script>
  <script type="text/javascript" src="publication.js"></script>
  <script type="text/javascript" src="home.js"></script>
  <script type="text/javascript" src="chapter.js"></script>
  <script type="text/javascript" src="profile.js"></script>
</body>
<script>
function openNav() {
  const mediaQuery=window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches){
    document.querySelector('.nav_dashboard').style.width = "250px";
  }
}

function closeNav() {
  const mediaQuery=window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches){
    document.querySelector(".nav_dashboard").style.width = "0";
    document.querySelector(".dashboard_container").style.marginLeft= "0";
    document.querySelector(".dashboard_container").style.width = "100vw";
  }
}
</script>
<script type="text/javascript">
let fac_name = '<?php echo $fac_name?>';
let fac_sdrn = '<?php echo $fac_sdrn ?>';
</script>
<!-- changes -->
<script type="text/javascript">
let bookChapter = <?php echo json_encode($book_chapter);?>;
let bookJournal = <?php echo json_encode($journal); ?>;
let bookConf = <?php echo json_encode($conference); ?>;
let bookPublication = <?php echo json_encode($publication);?>;
let bookPatent = <?php echo json_encode($patent);?>;
let bookCopy = <?php echo json_encode($copyright);?>;

</script>

</html>