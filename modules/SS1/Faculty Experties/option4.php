<!DOCTYPE html>
<html lang="en">
<?php
@session_start();
if(isset($_SESSION['o1'])){
echo '<script language="javascript"> alert("DETAILS ALREADY EXISTS"); </script>';
$_SESSION['o1']=NULL;
}
?>
<?php

include('connect.php');
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="optionstyle.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <title>Option4</title>
</head>
<body>
  

    <nav class="navbar navbar-expand-sm bg-info ">
    <div class="navbar_title" style=" font-family: 'Times New Roman', Times, serif; font-size: 50px; color: whitesmoke;">Awards</div>
</nav>


<form action="option11.php" method="POST" enctype="multipart/form-data">
    <div class="form-group">
    <label for="Name">Name:</label>
    <div class="col-md-5"><input type="text" value="<?php echo $_SESSION['firstname'] ." ". $_SESSION['middlename'] ." ". $_SESSION['thirdname'];?>" class="form-control border border-secondary" name= "name2" id="name" disabled></div>
    </div>
    <div class="form-group">
    <label for="Award">Name of Award:</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="Enter Award name" name="Award" id="Award"></div>
    </div>
    <div class="form-group">
    <label for="Award">Title of innovation:</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="Enter Innovation name" name="Innovation" id="Innovation"></div>
    </div>
    <div class="form-group">
    <label for="Award">Name of Awardee:</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="Enter the name" name="Awardee" id="Awardee"></div>
    </div>
    <div class="form-group">
      <label for="position">Select Position:</label>
      <div class="col-md-5">
     <select class="form-control  border border-secondary" name="position" id="position">
        <option>1st</option>
        <option>2nd</option>
        <option>3rd</option>
        <option>Participating</option>
     </select>
        </div>
    </div>
    <div class="form-group">
    <label for="Award">Name of the event:</label>
    <div class="col-md-5"><input type="text" name="Eventname" class="form-control border border-secondary" placeholder="Enter Event/Agency name" id="Eventname"></div>
    </div>
    <div class="form-group">
    <label for="Award">Awarding Agency:</label>
    <div class="col-md-5"><input type="text" name="Awardagency" class="form-control border border-secondary" placeholder="Enter Agency name" id="Awardagency"></div>
    </div>
    <div class="form-group">
      <label for="example-date-input" >Date</label>
      <div class="col-md-5">
        <input class="form-control border border-secondary" type="date" name="date" id="example-date-input">
      </div>
    </div>

    <div class="form-group">
    <label for="Award">University:</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="Enter University name" name="Universityname" id="Universityname"></div>
    </div>
    <div class="form-group">
    <label for="Award">Name of the college</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="Enter College name" name="collegename" id="collegename"></div>
    </div>
    <div class="form-group">
    <label for="Name">Category:</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="Enter the category" name="categoryname" id="categoryname"></div>
    </div>
    <div class="form-group">
  <label for="sel1">Select level:</label>
  <div class="col-md-4">
  <select class="form-control border border-secondary" name="lvl1" id="lvl" >
    <option>Local level</option>
    <option>State level</option>
    <option>National level</option>
    <option>International level</option>   
  </select>
  </div>

  <label  for="pdf Upload" >pdf Upload:</label>
    <div class="custom-file mb-3">
    <div class="col-md-5">
      <input  type="file" class="custom-file-input" id="customFile" name="file">
      <label style="margin-left:30px" class="custom-file-label border border-secondary" for="customFile">Sdrn_Facultyname_activityname_Date</label>
    </div>
    </div>

    <div class="btn">
    <button type="submit" name="submit4" class="btn btn-primary ">Submit</button>
    </div>

</form>


<script>

$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>


</body>
</html>