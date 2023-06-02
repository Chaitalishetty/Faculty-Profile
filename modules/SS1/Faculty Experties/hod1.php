
<html>
<head>
 <title></title>

 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 <link rel="stylesheet" type="text/css" href="hod1.css">
    <!-- CSS only -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

 <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
   <script type="text/javascript" charset="utf8" src="https://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
   <script src="https://kit.fontawesome.com/16e94d9d43.js" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark ">
    <div class="navbar_title" style=" font-family: 'roboto', Times, serif; font-size: 50px; color: whitesmoke;">Report</div>
</nav>

 <div class="container">
 <div class="col-lg-12">
 <br><br>
 
 <br>
 <input class="bg-dark text-white" type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
 <table  id="tabledata" class=" table table-striped table-hover table-bordered">
 
 <tr class="bg-dark text-white text-center">
 
 
 <th> Username </th>
 <th> SDRN </th>
 <th> Edit </th>
 <th> Report </th>
 


 </tr >

 <?php

 include 'connect.php'; 
 $q = "select * from faculty_info ";

 $query = mysqli_query($conn,$q);

 while($res = mysqli_fetch_array($query))
 {
 ?>
  <tr class="text-center">
  <td> <?php echo $res['First_name']."  ".$res['Middle_name']."   ".$res['Last_name'];  ?> </td>
    <td> <?php echo $res['Sdrn'];  ?> </td>
    
    <!-- <td> <button class="btn-danger btn"> <a href="report.php?id=<?php echo $res['First_name']; ?>" class="text-white"> Report </a>  </button> </td> -->
    <td>
	<form action="individualreport.php" method="post">
        <input type="hidden" name="id" value=<?php echo $res['Sdrn'];?>>
        <button class="btn-primary btn" type="submit"  class="text-white"><i class="far fa-edit"></i> Edit</button>
        
      </form>
 </td>
 <td>
      <form action="report.php" method="post">
        <input type="hidden" name=Sdrn value=<?php echo $res['Sdrn'];?>>
        <button class="btn-danger btn" type="submit"  class="text-white"><i class="far fa-file"></i> Report</button>
       
      </form>
    </td>
  </tr>

 <?php 
 }
  ?>
 
 </table>  

 </div>
 </div>

 <script type="text/javascript">
 
 $(document).ready(function(){
 $('#tabledata').DataTable();
 }) 
 
 </script>


<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("tabledata");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

</body>
</html>