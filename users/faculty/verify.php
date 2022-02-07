<?php
@session_start();
include('..\..\include\conn.php');
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    $faculty_name = $_SESSION['full_name'];
}

$i=0;
$output="";
$sql =  "SELECT * FROM book_chapter where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Chapter</h1>
    <table class="table">
      <thead class="bg-danger">
        <tr>
          <th scope="col">Sr. No.</th>
          <th scope="col">SDRN</th>
          <th scope="col">Faculty Name</th>
          <th scope="col">Chapter Name</th>
          <th scope="col">Book Name</th>
          <th scope="col">ISBN/ISSN No.</th>
          <th scope="col">Registration Date</th>
          <th scope="col">Verify?</th>
        </tr>
      </thead>
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["sdrn"]."</td>
              <td>".$row["author1"]."</td>
              <td>".$row["chapter_name"]."</td>
              <td>".$row["book_name"]."</td>
              <td>".$row["isbn_no"]."</td>
              <td>".$row["reg_date"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\chapter.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM book_chapter ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and reg_date between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Chapter</h1>
      <table class="table">
        <thead class="bg-danger">
          <tr>
            <th scope="col">Sr. No.</th>
            <th scope="col">SDRN</th>
            <th scope="col">Faculty Name</th>
            <th scope="col">Chapter Name</th>
            <th scope="col">Book Name</th>
            <th scope="col">ISBN/ISSN No.</th>
            <th scope="col">Registration Date</th>
            <th scope="col">Verify?</th>
          </tr>
        </thead>
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["chapter_name"]."</td>
                <td>".$row["book_name"]."</td>
                <td>".$row["isbn_no"]."</td>
                <td>".$row["reg_date"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\chapter.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################


$i=0;
$sql =  "SELECT * FROM book_publication where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Publications</h1>
    <table class="table">
      <thead class="bg-danger">
        <tr>
          <th scope="col">Sr. No.</th>
          <th scope="col">SDRN</th>
          <th scope="col">Faculty Name</th>
          <th scope="col">Book Name</th>
          <th scope="col">Publisher Name</th>
          <th scope="col">ISBN/ISSN No.</th>
          <th scope="col">Year</th>
          <th scope="col">Verify?</th>
        </tr>
      </thead>
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["sdrn"]."</td>
              <td>".$row["author1"]."</td>
              <td>".$row["book_name"]."</td>
              <td>".$row["publisher_name"]."</td>
              <td>".$row["isbn_no"]."</td>
              <td>".$row["year"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\pub_book.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM book_publication ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and reg_date between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Chapter</h1>
      <table class="table">
        <thead class="bg-danger">
          <tr>
            <th scope="col">Sr. No.</th>
            <th scope="col">SDRN</th>
            <th scope="col">Faculty Name</th>
            <th scope="col">Book Name</th>
            <th scope="col">Publisher Name</th>
            <th scope="col">ISBN/ISSN No.</th>
            <th scope="col">Year</th>
            <th scope="col">Verify?</th>
          </tr>
        </thead>
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["book_name"]."</td>
                <td>".$row["publisher_name"]."</td>
                <td>".$row["isbn_no"]."</td>
                <td>".$row["year"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\pub_book.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################


$i=0;
$sql =  "SELECT * FROM patent where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Patents</h1>
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
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["sdrn"]."</td>
              <td>".$row["author1"]."</td>
              <td>".$row["title"]."</td>
              <td>".$row["status"]."</td>
              <td>".$row["application_no"]."</td>
              <td>".$row["patent"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\pub_patent.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM patent ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and reg_date between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Chapter</h1>
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
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["title"]."</td>
                <td>".$row["status"]."</td>
                <td>".$row["application_no"]."</td>
                <td>".$row["patent"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\pub_patent.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################


$i=0;
$sql =  "SELECT * FROM copyright where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Copyright</h1>
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
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["sdrn"]."</td>
              <td>".$row["author1"]."</td>
              <td>".$row["title"]."</td>
              <td>".$row["status"]."</td>
              <td>".$row["application_no"]."</td>
              <td>".$row["reg_date"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\pub_copyright.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM copyright ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and reg_date between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Chapter</h1>
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
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["title"]."</td>
                <td>".$row["status"]."</td>
                <td>".$row["application_no"]."</td>
                <td>".$row["reg_date"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\pub_copyright.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################


$i=0;
$sql =  "SELECT * FROM journal where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Journal</h1>
    <table class="table">
      <thead class="bg-danger">
        <tr>
          <th scope="col">Sr. No.</th>
          <th scope="col">SDRN</th>
          <th scope="col">Faculty Name</th>
          <th scope="col">Title</th>
          <th scope="col">Journal Name</th>
          <th scope="col">Applicattion No.</th>
          <th scope="col">Publication Date</th>
          <th scope="col">Verify?</th>
        </tr>
      </thead>
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["sdrn"]."</td>
              <td>".$row["author1"]."</td>
              <td>".$row["title"]."</td>
              <td>".$row["journal_name"]."</td>
              <td>".$row["isbn_no"]."</td>
              <td>".$row["publication_date"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\pub_journal.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM journal ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and publication_date between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Journal</h1>
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
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["title"]."</td>
                <td>".$row["journal_name"]."</td>
                <td>".$row["isbn_no"]."</td>
                <td>".$row["publication_date"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\pub_journal.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################


$i=0;
$sql =  "SELECT * FROM conference where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Conference</h1>
    <table class="table">
      <thead class="bg-danger">
        <tr>
          <th scope="col">Sr. No.</th>
          <th scope="col">SDRN</th>
          <th scope="col">Faculty Name</th>
          <th scope="col">Paper Title</th>
          <th scope="col">Conference Name</th>
          <th scope="col">DOI.</th>
          <th scope="col">Conference Date</th>
          <th scope="col">Verify?</th>
        </tr>
      </thead>
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["sdrn"]."</td>
              <td>".$row["author1"]."</td>
              <td>".$row["paper_title"]."</td>
              <td>".$row["con_name"]."</td>
              <td>".$row["doi"]."</td>
              <td>".$row["con_date"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\pub_conference.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM conference ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and con_date between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Journal</h1>
      <table class="table">
        <thead class="bg-danger">
          <tr>
            <th scope="col">Sr. No.</th>
            <th scope="col">SDRN</th>
            <th scope="col">Faculty Name</th>
            <th scope="col">Paper Title</th>
            <th scope="col">Conference Name</th>
            <th scope="col">DOI.</th>
            <th scope="col">Conference Date</th>
            <th scope="col">Verify?</th>
          </tr>
        </thead>
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["sdrn"]."</td>
                <td>".$row["author1"]."</td>
                <td>".$row["paper_title"]."</td>
                <td>".$row["con_name"]."</td>
                <td>".$row["doi"]."</td>
                <td>".$row["con_date"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\pub_conference.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################


$i=0;
$sql =  "SELECT * FROM workshop where (`verified`='0' or `verified`='1') and `sdrn`='$sdrn'"  ; 
$result = mysqli_query($conn, $sql);
$total = mysqli_num_rows($result);
if($total >0){
  $output.='
    <h1 class="text-center">Workshop Attended</h1>
    <table class="table">
      <thead class="bg-danger">
        <tr>
          <th scope="col" >Sr.No.</th>
          <th scope="col" >SDRN</th>
          <th scope="col">Faculty Name</th>
          <th scope="col" width="10%">Criteria</th>
          <th scope="col" width="10%">Venue</th>
          <th scope="col" width="12%">Date From</th>
          <th scope="col" width="12%">Date To</th>
          <th scope="col" width="10%">Organiser</th>
          <th scope="col" width="10%">Level</th>
          <th scope="col">Verify?</th>
        </tr>
      </thead>
      <tbody class="table-danger" >';
  while($row = mysqli_fetch_array($result)){
    $i=$i+1;
    $output.="<tr><th scope='row'>".$i."</th>
              <td>".$row["SDRN"]."</td>
              <td>".$row["Name"]."</td>
              <td>".$row["criteria"]."</td>
              <td>".$row["venue"]."</td>
              <td>".$row["sdate"]."</td>
              <td>".$row["edate"]."</td>
              <td>".$row["organiser"]."</td>
              <td>".$row["org_type"]."</td>";
    if ($row["verified"]=='0'){
      $output.="<td><a href='verify\par_work_att.php?id=".$row["Srno"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
    }else{
      $output.="<td>In Process</td></tr>";
    }
  }
  $output.='
    </tbody>
    </table>';
}


if(isset($_POST["gen_report"])){
  $i=0;
  $output="<h4 class='text-center' style='font-weight:bold'>Reports showing  ";
  $filter_query="";
  $select="SELECT * FROM workshop ";

  if(isset($_POST["date_from"]) &&$_POST["date_to"] && $_POST["date_from"]!="" && $_POST["date_to"]!=""){
    $from=date('Y-m-d',strtotime($_POST['date_from']));
    $to=date('Y-m-d',strtotime($_POST['date_to']));
    $filter_query.="WHERE (`verified`='0' or `verified`='1') and `sdrn`='$sdrn' and sdate between '$from' and '$to'";
    $output.="from ".$from." to ".$to;
  }
  
  $output.="</h4><h5>";
    $sql =   $select.$filter_query; 
    $result = mysqli_query($conn, $sql); 
    if($total >0){
    $output.='
      <h1 class="text-center">Journal</h1>
      <table class="table">
        <thead class="bg-danger">
          <tr>
            <th scope="col" >Sr.No.</th>
            <th scope="col" >SDRN</th>
            <th scope="col">Faculty Name</th>
            <th scope="col" width="10%">Criteria</th>
            <th scope="col" width="10%">Venue</th>
            <th scope="col" width="12%">Date From</th>
            <th scope="col" width="12%">Date To</th>
            <th scope="col" width="10%">Organiser</th>
            <th scope="col" width="10%">Level</th>
            <th scope="col">Verify?</th>
          </tr>
        </thead>
        <tbody class="table-danger" >';
    while($row = mysqli_fetch_array($result)){
      $i=$i+1;
      $output.="<tr><th scope='row'>".$i."</th>
                <td>".$row["SDRN"]."</td>
                <td>".$row["Name"]."</td>
                <td>".$row["criteria"]."</td>
                <td>".$row["venue"]."</td>
                <td>".$row["sdate"]."</td>
                <td>".$row["edate"]."</td>
                <td>".$row["organiser"]."</td>
                <td>".$row["org_type"]."</td>";
      if ($row["verified"]=='0'){
        $output.="<td><a href='verify\par_work_att.php?id=".$row["id"]."' class='icon-block'><b><i class='far fa-file-alt'></i></b></a></td></tr>";
      }else{
        $output.="<td>In Process</td></tr>";
      }
    }
    $output.='
      </tbody>
      </table>';
  }
}
// ####################################################################################################################
// ####################################################################################################################

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
    <title>Verify</title>
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
          <div style='width:100%; overflow-x: scroll'>

            <?php echo $output;?>


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