<!-- BOOK CHAPTER -->
  <?php
    $conn = mysqli_connect("localhost", "root", "","test");
    if ($conn->connect_error)  {
      die("Connection failed: " . $conn->connect_error);
    }
    $fac_name = "Mrs. Bhoir Smita V.";
    $fac_sdrn = 482;
    // chapter fetch
    $query1="SELECT * FROM book_chapter where sdrn = '$fac_sdrn' OR faculty_name='$fac_name' OR author1 = '$fac_name' OR author2 = '$fac_name' 
    OR author3 = '$fac_name' OR author4 = '$fac_name' ";
    $book_chapter=array(); 
    $result = mysqli_query($conn, $query1);   
    if(mysqli_num_rows($result) <= 0) {
        $book_chapter="";
    }
    else{
        while ($row = @mysqli_fetch_array($result)) {
            $auth1=$row["author1"];
             $auth2=$row["author2"];
             $auth3=$row["author3"];
             $auth4=$row["author4"];
             $chapter_name=$row["chapter_name"];
             $book_name=$row["book_name"];
             $pub_name=$row["publisher_name"];
             $year=$row["publication_year"];
             $chapter=array($auth1,$auth2,$auth3,$auth4,$chapter_name,$book_name,$pub_name,$year);
               // $chapter=$auth1." ".$auth2.", ".$auth3.", ".$auth4.", \"".$chapter_name."\" ,".$book_name.", ".$pub_name;
             array_push($book_chapter,$chapter);
     }
    } 
  ?>
  <!-- PUBLICATION -->
<?php
   
    // chapter fetch
    $query1="SELECT * FROM book_publication where sdrn = '$fac_sdrn' OR faculty_name='$fac_name' OR author1 = '$fac_name' OR author2 = '$fac_name' 
    OR author3 = '$fac_name' OR author4 = '$fac_name' ";
    $pub=array() ; 
    $publication=array();
    $result = mysqli_query($conn, $query1);   
    if(mysqli_num_rows($result) <=0) {
        $publication="";  
    }
    else{
      while ($row = @mysqli_fetch_array($result)) {
        $auth1=$row["author1"];
        $auth2=$row["author2"];
        $auth3=$row["author3"];
        $auth4=$row["author4"];
        $book_name=$row["book_name"];
        $pub_name=$row["publisher_name"];
        $year=$row["year"];
        $pub=array($auth1,$auth2,$auth3,$auth4,$book_name,$pub_name,$year);
          // $chapter=$auth1." ".$auth2.", ".$auth3.", ".$auth4.", \"".$chapter_name."\" ,".$book_name.", ".$pub_name;
        array_push($publication,$pub);
}
    } 
  ?>
  <!-- PATENT -->
  <?php
   
   // chapter fetch
   $query2="SELECT * FROM patent where sdrn = '$fac_sdrn' OR faculty_name='$fac_name' OR author1 = '$fac_name' OR author2 = '$fac_name' 
   OR author3 = '$fac_name' OR author4 = '$fac_name' ";
   $pat=array() ; 
   $patent=array();
   $result2 = mysqli_query($conn, $query2);   
   if(mysqli_num_rows($result2) <=0) {
       $patent="";  
   }
   else{
     while ($row2 = @mysqli_fetch_array($result2)) {
       $auth1=$row2["author1"];
       $auth2=$row2["author2"];
       $auth3=$row2["author3"];
       $auth4=$row2["author4"];
       $title=$row2["title"];
       $year=$row2["patent"];
       $pat=array($auth1,$auth2,$auth3,$auth4,$title,$year);
         // $chapter=$auth1." ".$auth2.", ".$auth3.", ".$auth4.", \"".$chapter_name."\" ,".$book_name.", ".$pub_name;
       array_push($patent,$pat);
}
   } 
 ?>
 <!-- COPYRIGHT -->
 <?php
   
   // chapter fetch
   $query1="SELECT * FROM copyright where sdrn = '$fac_name' OR faculty_name='$fac_name' OR author1 = '$fac_name' OR author2 = '$fac_name' 
   OR author3 = '$fac_name' OR author4 = '$fac_name' ";
   $copy=array(); 
   $copyright=array();
   $result = mysqli_query($conn, $query1);   
   if(mysqli_num_rows($result) <=0) {
       $copyright="";  
   }
   else{
     while ($row = @mysqli_fetch_array($result)) {
       $auth1=$row["author1"];
       $auth2=$row["author2"];
       $auth3=$row["author3"];
       $auth4=$row["author4"];
       $title=$row["title"];
       $copy=array($auth1,$auth2,$auth3,$auth4,$title);
         // $chapter=$auth1." ".$auth2.", ".$auth3.", ".$auth4.", \"".$chapter_name."\" ,".$book_name.", ".$pub_name;
       array_push($copyright,$copy);
}
   } 
 ?>
<!-- journal -->
    <?php
    
    // chapter fetch
    $query1="SELECT * FROM journal where sdrn = '$fac_name' OR faculty_name='$fac_name' OR author1 = '$fac_name' OR author2 = '$fac_name' 
    OR author3 = '$fac_name' OR author4 = '$fac_name' ";
    $jour=array() ; 
    $journal=array();
    $result = mysqli_query($conn, $query1);   
    if(mysqli_num_rows($result) <= 0) {
      while ($row = @mysqli_fetch_array($result)) {
        $auth1=$row["author1"];
        $auth2=$row["author2"];
        $auth3=$row["author3"];
        $auth4=$row["author4"];
        $title=$row["title"];
        $journal_name=$row["journal_name"];
        $volume_no=$row["volume_no"];
        $pub_date=$row["publication_date"];
        $jour=array($auth1,$auth2,$auth3,$auth4,$title,$journal_name,$volume_no,$pub_date);
          // $chapter=$auth1." ".$auth2.", ".$auth3.", ".$auth4.", \"".$chapter_name."\" ,".$book_name.", ".$pub_name;
        array_push($journal,$jour);
      }
    }
    else{
      $journal="";
    } 
  ?>
<!-- Conference -->
  <?php
    
    // chapter fetch
    $query1="SELECT * FROM conference where sdrn = '$fac_name' OR faculty_name='$fac_name' OR author1 = '$fac_name' OR author2 = '$fac_name' 
    OR author3 = '$fac_name' OR author4 = '$fac_name' ";
    $conf=array() ; 
    $conference=array();
    $result = mysqli_query($conn, $query1);   
    if(mysqli_num_rows($result) <= 0) {
        $conference="";
    }
    else{
        while ($row = @mysqli_fetch_array($result)) {
            $auth1=$row["author1"];
            $auth2=$row["author2"];
            $auth3=$row["author3"];
            $auth4=$row["author4"];
            $paper_title=$row["paper_title"];
            $con_name=$row["con_name"];
            $con_place=$row["con_place"];
            $con_date=$row["con_date"];
            $conf=array($auth1,$auth2,$auth3,$auth4,$paper_title,$con_name,$con_place,$con_date);
              // $chapter=$auth1." ".$auth2.", ".$auth3.", ".$auth4.", \"".$chapter_name."\" ,".$book_name.", ".$pub_name;
            array_push($conference,$conf);
        }   
    } 
  ?>

