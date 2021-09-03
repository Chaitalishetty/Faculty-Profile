<?php
  function fac_bk_chp(){
    $conn = mysqli_connect("localhost", "root", "", "test");
    $sql_fac_bk_chp = "SELECT count(id) FROM `book_chapter` WHERE (sdrn = '".$_SESSION['sdrn']."' OR faculty_name LIKE '%".$_SESSION['full_name']."%' OR author1 LIKE '%".$_SESSION['full_name']."%' OR author2 LIKE '%".$_SESSION['full_name']."%' OR author3 LIKE '%".$_SESSION['full_name']."%' OR author4 LIKE '%".$_SESSION['full_name']."%') ";
    $result_fac_bk_chp = mysqli_query($conn, $sql_fac_bk_chp);  
    $row_fac_bk_chp = mysqli_fetch_array($result_fac_bk_chp);
    return $row_fac_bk_chp[0];
  }
  function fac_bk_pub(){
    $conn = mysqli_connect("localhost", "root", "", "test");
    $sql_fac_bk_chp = "SELECT count(id) FROM `book_publication` WHERE sdrn='".$_SESSION['sdrn']."' ";
    $result_fac_bk_chp = mysqli_query($conn, $sql_fac_bk_chp);  
    $row_fac_bk_chp = mysqli_fetch_array($result_fac_bk_chp);
    return $row_fac_bk_chp[0];
  }
?>