
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

    <title>Option2</title>
</head>
<body>
    


<nav class="navbar navbar-expand-sm navbar-info bg-primary ">
    <div class="navbar_title" style=" font-family: 'Times New Roman', Times, serif; font-size: 50px; color: whitesmoke;">Engineering Exams</div>
</nav>


<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" >
  Competitive Exam
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="medical.php">Medical Exam Details</a></li>
    <li><a class="dropdown-item" href="option2.php">Engineering Exam Detail</a></li>
    
  </ul>
</div>

<div style="border-bottom: 3px solid white;
    margin: 13px;"></div>


<form action="option11.php" method='POST' enctype="multipart/form-data">
  <div class="form-group">
    <label for="Name">Name:</label>
    <div class="col-md-5"><input type="name" value="<?php echo $_SESSION['firstname'] ." ". $_SESSION['middlename'] ." ". $_SESSION['thirdname'];?>" class="form-control border border-secondary" name="name1" id="name" disabled></div>
   </div>


   <select class="bg-dark text-white form-group my-3" onclick="display();" id="selectA" name="exam1" id="exam1" required  style="margin-left: 40rem; padding:10px;">
      <option value="" selected disabled hidden>SELECT AN OPTION</option>
      <option value="aa" >PET</option>
      <option value="bb" >Gate</option>
      <option value="cc" >Both</option>
      <option value="dd" >Other</option>


     

    </select>

<div id="ha" style="display: none;">

   <div class="form-group">
    <label for="PET">PET Appeared</label>
    <div class="col-md-5"><input type="number" class="form-control border border-secondary" name="pet" id="PET"></div>
   </div>
    <div class="col-5 form-group">
    <label for="Date of PET Exam" style="color:white" >Date of PET Exam</label>
     <div class="col-md-6">
    <input class="form-control border border-secondary" type="date" name="pet_date" id="PET-date-input">
    </div>
    </div>
    <div class="form-group">
    <label for="PET Score">PET score:</label>
    <div class="col-md-5"><input type="number" class="form-control border border-secondary" placeholder="Enter score" name="pet_score" id="PET_score"></div>
    </div>

 </div>



 <div id="hb" style="display: none;">

    <div class="form-group">
    <label for="Gate Appeared">Gate Appeared:</label>
    <div class="col-md-5"><input type="number" class="form-control border border-secondary" name="gate_appeared" id="Gate Appeared"></div>
    </div>
    <div class="col-md-5 form-group">
    <label for="GATE-date-input" style="color:white" >Date of GATE</label>
     <div class="col-md-6">
    <input class="form-control border border-secondary" type="date" name="gate_date" id="GATE-date-input">
    </div>
    </div>
    <div class="form-group">
    <label for="GET_score">GATE score</label>
    <div class="col-md-5"><input type="number" class="form-control border border-secondary" name="gate_score" id="GATE_score"></div>
    </div>
    </div>





    <div id="hc" style="display: none;">

    <div class="form-group">
    <label for="Event name">Exam Name</label>
    <div class="col-md-5"><input type="text" class="form-control border border-secondary" placeholder="other" name="ename" id="venue"></div>
    </div>

<div class="form-group">
  <label for="Gate Appeared">Exam  Appeared:</label>
  <div class="col-md-5"><input type="number" class="form-control border border-secondary" name="eappeared" id="Gate Appeared"></div>
</div>
<div class="col-md-5 form-group">
  <label for="GATE-date-input" style="color:white">Date of Exam</label>
  <div class="col-md-6">
    <input class="form-control border border-secondary" type="date" name="edate" id="GATE-date-input">
  </div>
</div>
<div class="form-group">
  <label for="GET_score">Exam score</label>
  <div class="col-md-5"><input type="number" class="form-control border border-secondary" name="escore" id="GATE_score"></div>
</div>
</div>





    </div>
    <div class="custom-file mb-3 form-group">
    <label style="margin-left:10px" for="pdf Upload" style="color:white" >pdf Upload:</label>
    
    <div class="col-md-5">
      <input  type="file" class="custom-file-input" id="customFile" name="file">
      <label style="margin-left:30px" class="custom-file-label border border-secondary" for="customFile">Choose file</label>
    </div>
    </div>
    
    <div class="btn form-group">
    <button type="submit" name="submit2" class="btn btn-primary ">Submit</button>
    </div>
    
    
</form>

<script>


  function display(){
    var x = document.getElementById('selectA').value;

    if(x=="aa"){
      document.getElementById('ha').style.display='block';
      document.getElementById('hb').style.display='none';
      document.getElementById('hc').style.display='none';


    }

    else if(x=="bb"){
      document.getElementById('ha').style.display='none';
      document.getElementById('hb').style.display='block';
      document.getElementById('hc').style.display='none';

     

    }
    else if(x=="cc"){
      document.getElementById('ha').style.display='block';
      document.getElementById('hb').style.display='block';
      document.getElementById('hc').style.display='none';

    }
    else if(x=="dd"){
      document.getElementById('ha').style.display='none';
      document.getElementById('hb').style.display='none';
      document.getElementById('hc').style.display='block';

    }
  }
</script>

<script>
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label border border-secondary").addClass("selected").html(fileName);
});
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   
</body>
</html>