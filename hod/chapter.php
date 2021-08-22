<?php
@session_start();
$conn = mysqli_connect("localhost", "root", "", "test");
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
}
$sdrn=150;
$i=0;
$output="<h4>";
$sql =  "SELECT * from book_chapter" ; 
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_array($result)){
  $i=$i+1;
  $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
 $output .= "[".$i."]  ".$authors.', "'.$row["chapter_name"].'" in '.$row["book_name"].", ".$row["publisher_name"].", ".$row["publication_year"].". </br></br>";  
}
$output.="</h4>";
 if(isset($_POST["gen_report"])){
  $i=0;
   $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
   $filter_query="";
  $select="SELECT * from book_chapter where faculty_name!='' ";
   if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
     $from=date('Y-m-d',strtotime($_POST['date_from']));
       $to=date('Y-m-d',strtotime($_POST['date_to']));
       $filter_query.="AND publication_year between '$from' and '$to'";
        $output.="from ".$from." to ".$to;
   }
   if(isset($_POST["fac_name"]) && $_POST["fac_name"]!=""){
     $fac_name=mysqli_escape_string($conn,$_POST["fac_name"]);
     $filter_query.="AND (faculty_name LIKE '%$fac_name%' OR author1 LIKE '%$fac_name%' OR author2 LIKE '%$fac_name%' OR author3 LIKE '%$fac_name%' OR author4 LIKE '%$fac_name%')";
     $output.=" for ".$fac_name; 
    }
    $output.="</h4><h4>";
     $sql =   $select.$filter_query; 
     $result = mysqli_query($conn, $sql);  
     while($row = mysqli_fetch_array($result)){
       $i=$i+1;
       $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
       $output .= "[".$i."]  ".$authors.', "'.$row["chapter_name"].'" in '.$row["book_name"].", ".$row["publisher_name"].", ".$row["publication_year"].". </br></br>";    
    }
    $output.='</h4>';
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
      <div class="dashboard_content" style="width:100%; background-color:#fff;  margin:0">
      <div class="chapter">
        <h1 class="text-center">Chapter</h1>
        
            <form action="" method="post">
            <div class="hod_form">
                <label>From
                <input type="date" name="date_from" class="form-control">
                </label>
                <label>To
                <input type="date" name="date_to" class="form-control">
                </label>
                <label>Name of faculty
                <input type="text" list="faculty_names" autocomplete="off" name="fac_name" class="form-control">
                </label>
                <datalist id="faculty_names">
                  <?php 
                    $sql="SELECT * from book_chapter";
                    $result1 = mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_array($result1)){?>
                      '<option value="<?php echo $row['faculty_name']?>"></option>';
                      '<option value="<?php echo $row["author1"]?>"></option>';
                      '<option value="<?php echo $row["author2"]?>"></option>';
                      '<option value="<?php echo $row["author3"]?>"></option>';
                      '<option value="<?php echo $row["author4"]?>"></option>';
                  <?php
                    }
                    ?>
                  
                  </datalist></br>
                  <button type="submit" name="gen_report" class="btn btn-danger">Generate report</button>
            </div>
            </form>
        </br></br>
        <div style='width:93%;' >
            <?php echo $output;?>
        <div>
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