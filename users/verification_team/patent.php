<?php
@session_start();
include('..\..\include\conn.php');
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    $faculty_name = $_SESSION['full_name'];
}

$i=0;
$output="";
$sql =  "SELECT * FROM patent where `verified`='1' " ; 
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_array($result)){
  $i=$i+1;
  $output.="<tr><th scope='row'>".$i."</th>
            <td>".$row["sdrn"]."</td>
            <td>".$row["author1"]."</td>
            <td>".$row["title"]."</td>
            <td>".$row["status"]."</td>
            <td>".$row["application_no"]."</td>
            <td>".$row["patent"]."</td>
            <td><a href='verify\pub_patent.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
}

 if(isset($_POST["gen_report"])){
  $i=0;
   $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
   $filter_query="";
  $select="SELECT * FROM patent";
   if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
     $from=date('Y-m-d',strtotime($_POST['date_from']));
       $to=date('Y-m-d',strtotime($_POST['date_to']));
       $filter_query.=" WHERE `verified`='1' and patent between '$from' and '$to'";
        $output.="from ".$from." to ".$to;
   }
    $output.="</h4><h5>";
     $sql =   $select.$filter_query; 
     $result = mysqli_query($conn, $sql); 
     while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["title"]."</td>
                <td>".$row["status"]."</td>
                <td>".$row["application_no"]."</td>
                <td>".$row["patent"]."</td>
                <td><a href='verify\pub_patent.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>"; 
    }
 }

?>
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
    <!-- Font Awesome -->
    <script src="..\..\js\a076d05399.js"></script>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="..\..\fonts\SourceSansPro">
    <!-- Optional JavaScript Bootstrap -->
    <!-- <script src="..\..\js\jquery-3.3.1.slim.min.js"></script> -->
    <script src="..\..\js\popper.min.js"></script>
    <script src="..\..\js\bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patent</title>
</head>
<body>
  <!-- dashboard -->
  <div class="dashboard">
    <!-- side navigation bar -->
    <script>navbar();</script>
    <!--dashboard content-->
    <div class="dashboard_container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-navbar topbar mb-4 static-top shadow" >
        <a class="navbar-brand " href="#"><h2>Faculty Profile System</h2></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
          </ul>
          <ul class="navbar-nav form-inline my-2 my-lg-0" style="padding-right:1.5rem">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle nav-item active" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <?php echo $faculty_name;?>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <!-- <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Action2</a> -->
                <hr style="margin:0">
                <a class="dropdown-item" href="../../logout.php">Logout</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
      <div class="dashboard_content" style="width:100%; background-color:#fff;  margin:0">
        <div class="chapter">
          <h1 class="text-center">Patent</h1>
              <form action="" method="post">
                <div class="container">
                    <label>From
                    <input type="date" name="date_from" class="form-control">
                    </label>&nbsp;&nbsp;
                    <label>To
                    <input type="date" name="date_to" class="form-control">
                    </label>
                    <button type="submit" class="btn btn-danger my-2 my-sm-0" style="margin-left: 46%;" name="gen_report">Generate report</button>
                </div>
              </form>
          </br></br>
          <div style='width:100%; overflow-x: scroll'  >
            <table class="table">
              <thead class="bg-danger">
                <tr>
                  <th scope="col">Sr. No.</th>
                  <th scope="col">SDRN</th>
                  <th scope="col">Faculty Name</th>
                  <th scope="col">Title</th>
                  <th scope="col">Status</th>
                  <th scope="col">Application No.</th>
                  <th scope="col">Date of Filing</th>
                  <th scope="col">Verify?</th>
                </tr>
              </thead>
              <tbody class="table-danger" >
                <?php echo $output;?>
              </tbody>
            </table>

          <div>
        </div>
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
