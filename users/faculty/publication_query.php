<?php
@session_start();
$conn = mysqli_connect("localhost", "root", "", "test");
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    $faculty_name = $_SESSION['full_name'];
}
// $sdrn=150;
$i1=0;
$sql1 =  "SELECT * FROM book_chapter where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%')" ; 
$result1 = mysqli_query($conn, $sql1);
if(mysqli_num_rows($result1)!=0){
  $output1="<p class='heading'><b>BOOK CHAPTER</b></p><p class='con'>";
while($row = mysqli_fetch_array($result1)){
  $i1=$i1+1;
  $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
 $output1 .= "[".$i1."]  ".$authors.', "'.$row["chapter_name"].'" in '.$row["book_name"].", ".$row["publisher_name"].", ".$row["publication_year"].". </br></br>";  
}

$output1.="</p>";
}
else{
  $output1="";
}
?>
<?php
$i2=0;
$sql2 =  "SELECT * FROM book_publication where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%')" ; 
$result2 = mysqli_query($conn, $sql2); 
if(mysqli_num_rows($result2)!=0){
  $output2="<p class='heading'><b>BOOK PUBLICATION</b></p><p class='con'>";
while($row = mysqli_fetch_array($result2)){
  $i2=$i2+1;
  $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
  $output2 .= "[".$i2."]  ".$authors.', "'.$row["book_name"].'", '.$row["publisher_name"].", ".$row["isbn_no"].", ".$row["year"].", ".$row["opt1"]. ". </br></br>";    
}
$output2.="</p>";
}
else{
  $output2="";
}
?>
<?php
$i3=0;
$sql3 =  "SELECT * from journal where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%')" ; 
$result3 = mysqli_query($conn, $sql3); 
if(mysqli_num_rows($result3)!=0){
  $output3="<p class='heading'><b>JOURNAL</b></p><p class='con'>";
while($row = mysqli_fetch_array($result3)){
  $i3=$i3+1;
  $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
  $output3 .= "[".$i3."]  ".$authors.', "'.$row["title"].'", '.$row["journal_name"].', '.$row["volume_no"].", ".$row["publication_date"].", ".$row["opt1"] .". </br></br>";  
}
$output3.="</p>";
}
else{
  $output3="";
}
?>
<?php
$i4=0;
$sql4 =  "SELECT * FROM copyright where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%') " ; 
$result4 = mysqli_query($conn, $sql4); 
if(mysqli_num_rows($result4)!=0){
  $output4="<p class='heading'><b>COPYRIGHT</b></p><p class='con'>";
while($row = mysqli_fetch_array($result4)){
  $i4=$i4+1;
  $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
  $output4 .= "[".$i4."]  ".$authors.', '.$row["copyright"].', "'.$row["title"].'", '.$row["opt1"]. ". </br></br>";     
}
$output4.="</p>";
}
else{
  $output4="";
}
?>
<?php
$i5=0;
$sql5 =  "SELECT * from patent where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%')" ; 
$result5 = mysqli_query($conn, $sql5); 
if(mysqli_num_rows($result5)!=0){
  $output5="<p class='heading'><b>PATENT</b></p><p class='con'>";
  while($row = mysqli_fetch_array($result5)){
    $i=$i+1;
    $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
    $output5 .= "[".$i5."]  ".$authors.', '.$row["patent"].', "'.$row["title"].'", '.$row["opt1"]. ". </br></br>";     
  }
  $output5.="</p>";
}
else{
  $output5="";
}
?>
<?php
$i6=0;
$sql6 =  "SELECT * FROM conference where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%')" ; 
$result6 = mysqli_query($conn, $sql6); 
if(mysqli_num_rows($result6)!=0){
  $output6="<p class='heading'><b>CONFERENCE</b></p><p class='con'>";
while($row = mysqli_fetch_array($result6)){
  $i6=$i6+1;
  $authors=implode(", ",array_filter([$row["faculty_name"],$row["author1"],$row["author2"],$row["author3"],$row["author4"]]));
  $output6 .= "[".$i6."]  ".$authors.', "'.$row["paper_title"].'", '.$row["con_name"].', '.$row["con_place"].", ".$row["con_date"].", ".$row["indexed_in"].", ".$row["opt1"] .". </br></br>";  
}
$output6.="</p>";
}
else{
  $output6="";
}


$link = mysqli_connect("localhost", "root", "", "faculty_par");
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    $faculty_name = $_SESSION['full_name'];
}
$i7=0;
$sql7 =  "SELECT * FROM workshop where SDRN = '$sdrn'" ; 
$result7 = mysqli_query($link, $sql7);
if(mysqli_num_rows($result7)!=0){
  $output7="<p class='heading'><b>WORKSHOPS ATTENDED</b></p><p class='con'>";
while($row = mysqli_fetch_array($result7)){
  $i7=$i7+1;
 $output7 .="[" .$i7."] ".$row["Name_workshop"]." ( ".$row["criteria"]." ) ,".$row['sponsor'].", ".$row['venue'].", ".$row["sdate"].", ".$row["ndays"].", ".$row["organiser"].", ".$row["org_type"].", ".$row["sfunding"].", ".$row["ramount"].", ".$row["amount_funded"].", ".$row["TA"];  
}

$output7.="</p>";
}
else{
  $output7="";
}

$i8=0;
$sql8 =  "SELECT * FROM syllabus where SDRN = '$sdrn'" ; 
$result8 = mysqli_query($link, $sql8);
if(mysqli_num_rows($result8)!=0){
  $output8="<p class='heading'><b>SYLLABUS SETTINGS</b></p><p class='con'>";
while($row = mysqli_fetch_array($result8)){
  $i8=$i8+1;
 $output8 .= "[".$i8."] ".$row["University"].", ".$row["Subject"].", SEM ".$row["Semester"].", ".$row["Venue"].", ".$row["Date"].".";  
}

$output8.="</p>";
}
else{
  $output8="";
}

$i9=0;
$sql9 =  "SELECT * FROM orientation where SDRN = '$sdrn'" ; 
$result9 = mysqli_query($link, $sql8);
if(mysqli_num_rows($result9)!=0){
  $output9="<p class='heading'><b>ORIENTATION</b></p><p class='con'>";
while($row = mysqli_fetch_array($result9)){
  $i9=$i9+1;
 $output9 .= "[".$i9."] ".$row["University"].", ".$row["Subject"].", SEM ".$row["Semester"].", ".$row["Venue"].", ".$row["Date"].".";  
}

$output9.="</p>";
}
else{
  $output9="";
}



$link_tool = mysqli_connect("localhost", "root", "", "workshoptool");
if (isset($_SESSION['sdrn'])){
    $sdrn = $_SESSION['sdrn'];
    $faculty_name = $_SESSION['full_name'];
}
$i10=0;
$sql10 =  "SELECT * FROM schedule where faculty_sdrn = '$sdrn'" ; 
$result10 = mysqli_query($link_tool, $sql10);
if(mysqli_num_rows($result10)!=0){
  $output10="<p class='heading'><b>WORKSHOPS CONDUCTED</b></p><p class='con'>";
while($row = mysqli_fetch_array($result10)){
  $i10=$i10+1;
 $output10 .="[" .$i10."] ".$row["topic"].", ".$row['subject']." ( ".$row["schedule_type"]." ) ,".$row['speaker_name'].", ".$row["speaker_designation"].", ".$row['no_of_days']." days, ".$row['date'].".";  
}

$output10.="</p>";
}
else{
  $output10="";
}
?>