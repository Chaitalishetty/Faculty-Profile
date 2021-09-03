<?php
@session_start();
include('connect.php');
define('KB', 1024);
define('MB', 1048576);



if(isset($_POST['sub2'])){
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

           
            $fileDestination="upload_files/awards/".$fileName;
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
$query = "SELECT * from awards where id='".$id."'"; 
$result = mysqli_query($conn, $query) or die ( mysqli_error());
$row = mysqli_fetch_assoc($result);

?>

<?php
$status = "";
if(isset($_POST['new']) && $_POST['new']==1)
{
$id=$_REQUEST['id'];

$name =$_REQUEST['name'];
$tname=$_REQUEST['tname'];
$uname=$_REQUEST['uiname'];
$aname=$_REQUEST['aname'];
$cname=$_REQUEST['cname'];
$ename=$_REQUEST['ename'];
$pname=$_REQUEST['pname'];
$lname=$_REQUEST['lname'];
$cname=$_REQUEST['cname'];
$aaname=$_REQUEST['aaname'];
$anname=$_REQUEST['anname'];
$adate=$_REQUEST['adate'];




        


$update="update awards set Faculty_name='".$name."', Title_of_innovation='".$tname."' , Name_of_awardee='".$anname."' , University='".$uname."' ,Award_name='".$aname."'  , Awarding_agency='".$aaname."' , Category='".$cname."' , Date='".$adate."' ,College_name='".$cname."'  ,Event_name='".$ename."' ,Position='".$pname."',Level='".$lname."',pdf='".$fileDestination."'  where id='".$id."'";
mysqli_query($conn, $update) or die(mysqli_error());
echo '<script language="javascript">';
	echo 'alert("Report updated");';
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
    
    <title>Edit4 </title>
</head>    
<nav class="navbar navbar-expand-sm bg-info ">
        <div class="navbar_title">Awards</div>
    </nav>


<form action="edit1.php" method="POST" enctype="multipart/form-data">
<input type="hidden" name="new" value="1" />
<input name="id" type="hidden" value="<?php echo $row['id'];?>" />
    <div class="form-group">
    <label for="Name">Name:</label>
    <div class="col-5"><input type="name" name="name" class="form-control border border-secondary"  placeholder="Enter Name"  
required value="<?php echo $row['Faculty_name'];?>" /></div>
    </div>
    <div class="form-group">
    <label for="Award">Name of Award:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="aname" placeholder="Enter Award Name" 
required value="<?php echo $row['Award_name'];?>" /></div>
    </div>
	<div class="form-group">
    <label for="Award">Title of Innovation:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="tname" placeholder="Enter title of innnovation" 
required value="<?php echo $row['Title_of_innovation'];?>" /></div>
    </div>
	<div class="form-group">
    <label for="Award">Name of Awardee:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="anname" placeholder="Enter name of awardee" 
required value="<?php echo $row['Name_of_awardee'];?>" /></div>
    </div>
    <div class="form-group">
      <label for="position">Select Position:</label>
      <div class="col-5">
     <select class="form-control  border border-secondary" name="pname" placeholder="Enter Position" 
required value="<?php echo $row['Position'];?>" />
        <option>1st</option>
        <option>2nd</option>
        <option>3rd</option>
        <option>Participating</option>
     </select>
        </div>
    </div>
    <div class="form-group">
    <label for="Award">Name of the event:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="ename" placeholder="Enter Event Name" 
required value="<?php echo $row['Event_name'];?>" /></div>
    </div>
	<div class="form-group">
    <label for="Award">Awarding_agency:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="aaname" placeholder="Enter Awarding_agency" 
required value="<?php echo $row['Awarding_agency'];?>" /></div>
    </div>
	<div class="form-group">
    <label for="Award">Category:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="cname" placeholder="Enter Category" 
required value="<?php echo $row['Category'];?>" /></div>
    </div>
	
	<div class="form-group">
    <label for="Award" >Date</label>
     <div class="col-5">
    <input class="form-control border border-secondary" type="date"  name="adate" placeholder="Date" 
required value="<?php echo $row['Date'];?>" />
    </div>
	
    <div class="form-group r4">
    <label for="Award">University:</label>
    <div class="col-5"><input type="name" class="form-control border border-secondary" name="uiname" placeholder="Enter University" 
required value="<?php echo $row['University'];?>" /></div>
    </div>
    <div class="form-group r1">
    <label for="Award">Name of the college</label>
    <div class="col-8"><input type="name" class="form-control border border-secondary" name="cname" placeholder="Enter College Name" 
required value="<?php echo $row['College_name'];?>" /></div>
    </div>
    <div class="form-group r1">
  <label for="sel1">Select level:</label>
  <div class="col-4">
  <select class="form-control border border-secondary" name="lname" placeholder="Enter Level" 
required value="<?php echo $row['Level'];?>" />
    <option>Local level</option>
    <option>State level</option>
    <option>National level</option>
    <option>International level</option>   
  </select>
  </div>
</div>




<label style="margin-left:10px" for="pdf Upload" >pdf Upload:</label>
    <div class="custom-file mb-3">
    <div class="col-5">
      <input  type="file" class="custom-file-input" id="customFile" name="file"  required value="<?php echo $row['pdf'];?>" >
      <label style="margin-left:33px" class="custom-file-label border border-secondary" for="customFile">Choose file</label>
    </div>
    </div>

  <div class="btn">
  <button type="submit" name="sub2" class="btn btn-primary ">Submit</button>
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

