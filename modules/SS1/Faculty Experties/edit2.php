<?php
@session_start();
include('connect.php');
define('KB', 1024);
define('MB', 1048576);



if(isset($_POST['sub3'])){
$file=$_FILES['file'];

$fileName=$_FILES['file']['name'];

$fileTmpName=$_FILES['file']['tmp_name'];
$fileSize=$_FILES['file']['size'];
$fileError=$_FILES['file']['error'];
$fileType=$_FILES['file']['type'];

$fileExt=explode(".", $fileName);
$fileActualExt=strtolower(end($fileExt));
$allowed=array('jpg','jpeg','png','pdf');
if(in_array($fileActualExt, $allowed))
{
    if($fileError==0){
        if($fileSize<4*MB){

           $fileNameNew=uniqid("",true).".".$fileActualExt;
            $fileDestination="upload_files/exams/".$fileNameNew;
            move_uploaded_file($fileTmpName, $fileDestination);
            
            
        }
        else{
            echo "<script language='javascript'>alert('The Size of the file you are trying to upload exceeded the the size limit.\nTry Again.')</script>";
            header("Location:individualreport.php");
        }

    }
    else{
        echo "<script language='javascript'>alert('There was an error uploading your file.\nTry Again')</script>";
    header("Location:individualreport.php");
    }
}
else
{
    echo "<script language='javascript'>alert('You cannot upload files of this type!')</script>";
    header("Location:individualreport.php");
}

}

?>
<?php
@session_start();
include('connect.php');
$id=$_REQUEST['id'];
$query = "SELECT * from competitive_exam where id='".$id."'"; 
$result = mysqli_query($conn, $query) or die ( mysqli_error());
$row = mysqli_fetch_assoc($result);

?>

<?php
$status = "";
if(isset($_POST['new']) && $_POST['new']==1)
{
$id=$_REQUEST['id'];

$name =$_REQUEST['name'];
$pname=$_REQUEST['pname'];
$pdate=$_REQUEST['pdate'];
$pscore=$_REQUEST['pscore'];
$gname=$_REQUEST['gname'];
$gdate=$_REQUEST['gdate'];
$gscore=$_REQUEST['gscore'];

$submittedby = $_SESSION["username"];
$update="update competitive_exam set Faculty_name='".$name."', PET_appeared='".$pname."' ,PET_date='".$pdate."'  ,PET_score='".$pscore."'  ,GATE_appeared='".$gname."' ,GATE_date='".$gdate."'  ,GATE_score='".$gscore."' ,pdf='".$fileDestination."'  where id='".$id."'";
mysqli_query($conn, $update) or die(mysqli_error());
echo '<script language="javascript">';
echo 'alert("Report Updated");';
echo 'window.location.href="individualreport.php";';
echo '</script>';



}
else {
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="optionstyle.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
    <title> Competitive Exams</title>
</head>    
<nav class="navbar navbar-expand-sm bg-info ">
        <div class="navbar_title">Competitive Exams</div>
    </nav>
    
    <form action="edit2.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
      <input type="hidden" name="new" value="1" />
<input name="id" type="hidden" value="<?php echo $row['id'];?>" />
    <label for="Name">Name:</label>
    <div class="col-5"><input type="text" name="name" placeholder="Enter Name" 
required value="<?php echo $row['Faculty_name'];?>" / class="form-control border border-secondary" ></div>
   </div>
   <div class="form-group">
    <label for="PET">PET Appeared</label>
    <div class="col-5"><input type="number" class="form-control border border-secondary" name="pname" placeholder="PET Appeared" 
required value="<?php echo $row['PET_appeared'];?>" /></div>
   </div>
    <div class="col-5 form-group">
    <label for="Date of PET Exam" style="color:white">Date of PET Exam</label>
     <div class="col-6">
    <input class="form-control border border-secondary" type="date"  name="pdate" placeholder="PET Date" 
required value="<?php echo $row['PET_date'];?>" />
    </div>
    </div>
    <div class="form-group">
    <label for="PET Score">PET score:</label>
    <div class="col-5"><input type="number" class="form-control border border-secondary" name="pscore" placeholder="PET Score" 
required value="<?php echo $row['PET_score'];?>" /></div>
    </div>
    <div class="form-group">
    <label for="Gate Appeared">Gate Appeared:</label>
    <div class="col-5"><input type="number" class="form-control border border-secondary" name="gname" placeholder="Gate appered" 
required value="<?php echo $row['GATE_appeared'];?>" /></div>
    </div>
    <div class="col-5 form-group">
    <label for="GATE-date-input" >Date of GATE</label>
     <div class="col-6">
    <input class="form-control border border-secondary" type="date" name="gdate" placeholder="GATE Date" 
required value="<?php echo $row['GATE_date'];?>" />
    </div>
    </div>
    <div class="form-group">
    <label for="GET_score">GATE score</label>
    <div class="col-5"><input type="number" class="form-control border border-secondary" name="gscore" placeholder="GATE Score" 
required value="<?php echo $row['GATE_score'];?>" /></div>
    </div>
    </div>
    <div class="custom-file mb-3 form-group">
    <label style="margin-left:10px" for="pdf Upload" >pdf Upload:</label>
   
    <div class="col-5">
      <input  type="file" class="custom-file-input" id="customFile" name="file"  required value="<?php echo $row['pdf'];?>" >
      <label style="margin-left:33px" class="custom-file-label border border-secondary" for="customFile">Choose file</label>
    </div>
    </div>

  <div class="btn form-group">
  <button type="submit" name="sub3" class="btn btn-primary ">Submit</button>
    </div>

</form>
<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    
  
<?php } ?>
<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    


</body>
</html>
