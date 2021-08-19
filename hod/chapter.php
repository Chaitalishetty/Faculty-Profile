<?php
@session_start();
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    
}
$sdrn=150;
$output = "";
if(isset($_POST["gen_report"])){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
      $to=date('Y-m-d',strtotime($_POST['date_to']));
    
    
    $conn = mysqli_connect("localhost", "root", "", "test");
    $sql =   "SELECT * from book_chapter where publication_year between '$from' and '$to'"; 
    $result = mysqli_query($conn, $sql);  
    $output.='<table>';
    while($row = mysqli_fetch_array($result)){
      $output .= '<tr> 
      <td>'.$row["sdrn"].'</td>  
      <td>'.$row["faculty_name"].'</td>  
      <td>'.$row["author1"].'</td>  
      <td>'.$row["author2"].'</td>  
      <td>'.$row["author3"].'</td>  
      <td>'.$row["author4"].'</td>  
      <td>'.$row["chapter_name"].'</td>  
      <td>'.$row["book_name"].'</td>  
      <td>'.$row["through"].'</td>
      <td>'.$row["publisher_name"].'</td>
      <td>'.$row["isbn_no"].'</td>  
      <td>'.$row["publication_year"].'</td> 
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
    <link href="../styles.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="navbar.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Bootstrap Links  -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
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
      <div class="chapter">
        <h1 class="text-center">Chapter</br></br></h1>
        <div>
            <form action="" method="post" style="display:flex;">
            <label>From</label>
            <input type="date" name="date_from" class="form-control">
            <label>To</label>
            <input type="date" name="date_to" class="form-control">
            <button type="submit" name="gen_report" class="btn btn-danger">generate report</button>
            </form>
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