<?php
@session_start();
$conn = mysqli_connect("localhost", "root", "", "test");
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    
}
$sdrn=150;
$output = "";
if(isset($_POST["gen_report_date"])){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
      $to=date('Y-m-d',strtotime($_POST['date_to']));
    $sql =   "SELECT * from patent where patent between '$from' and '$to'"; 
    $result = mysqli_query($conn, $sql);  
    $output.="<h4 class='text-center'>Reports showing from ".$from." to ".$to."</h4></br><table>";
    while($row = mysqli_fetch_array($result)){
      $output .= '<tr> 
    <td>'.$row["sdrn"].'</td>  
    <td>'.$row["faculty_name"].'</td>  
    <td>'.$row["author1"].'</td>  
    <td>'.$row["author2"].'</td>  
    <td>'.$row["author3"].'</td>  
    <td>'.$row["author4"].'</td>  
    <td>'.$row["title"].'</td>  
    <td>'.$row["application_no"].'</td>  
    <td>'.$row["patent"].'</td> 
    <td>'.$row["status"].'</td>
    <td>'.$row["opt1"].'</td>   
  </tr> ';  
    }
    $output.='</table>';
}
if(isset($_POST["gen_report_name"])){
  $fac_name=mysqli_escape_string($conn,$_POST["fac_name"]);
  $sql1 =   "SELECT * FROM patent where (faculty_name LIKE '%$fac_name%' OR author1 LIKE '%$fac_name%' OR author2 LIKE '%$fac_name%' OR author3 LIKE '%$fac_name%' OR author4 LIKE '%$fac_name%')"; 
  $result1 = mysqli_query($conn, $sql1);  
  $output.="<h4 class='text-center'>Reports showing for ".$fac_name."</h4></br><table>";
  while($row = mysqli_fetch_array($result1)){
    $output .= '<tr> 
    <td>'.$row["sdrn"].'</td>  
    <td>'.$row["faculty_name"].'</td>  
    <td>'.$row["author1"].'</td>  
    <td>'.$row["author2"].'</td>  
    <td>'.$row["author3"].'</td>  
    <td>'.$row["author4"].'</td>  
    <td>'.$row["title"].'</td>  
    <td>'.$row["application_no"].'</td>  
    <td>'.$row["patent"].'</td> 
    <td>'.$row["status"].'</td>
    <td>'.$row["opt1"].'</td>   
  </tr> ';  
  }
  $output.='</table>';
}    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="../../css/styles.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="navbar.js"></script>
    <?php include('../scripts.php');?>
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
      <div class="dashboard_content" style="width:90%; background-color:#fff; margin-left:1rem; margin-top:0">
      <div class="patent">
        <h1 class="text-center">Patent</h1>
        <div class="hod_form">
            <form action="" method="post">
            <label>From
            <input type="date" name="date_from" class="form-control" required>
            </label>
            <label>To
            <input type="date" name="date_to" class="form-control" required>
            </label></br>
            <button type="submit" name="gen_report_date" class="btn btn-danger">generate report</button>
            </form>
            <form action="" method="post">
            <label>Name of faculty
            <input type="text" name="fac_name" class="form-control" required>
            </label></br>
            <button type="submit" name="gen_report_name" class="btn btn-danger">generate report</button>
            </form>
        </div>
        </br></br>
          <?php echo $output;?>
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