<?php
    include('..\..\..\include\conn.php');
    if (isset($_SESSION['sdrn'])){
        $sdrn = $_SESSION['sdrn'];
        $faculty_name = $_SESSION['full_name'];
    }


    if(isset($_POST['revert'])){
        require "..\..\..\include\conn.php";
        $sql = "UPDATE `book_chapter` SET `verified`='0', `v_comment`='".$_POST['v_comment']."' WHERE id='".$_POST['id']."' ";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo '
            <script type="text/javascript">
                alert("Chapter Reverted");
                window.open("../chapter.php", "_self");
            </script> 
        ';
        }else{
            echo '
                <script type="text/javascript">
                    alert("Error");
                    window.open("../chapter.php", "_self");
                </script> 
            ';
            exit();
        }
    }

    if(isset($_POST['verify'])){
        require "..\..\..\include\conn.php";
        $sql = "UPDATE `book_chapter` SET `verified`='2', `v_comment`='".$_POST['v_comment']."' WHERE id='".$_POST['id']."' ";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo '
            <script type="text/javascript">
                alert("Chapter Verified");
                window.open("../chapter.php", "_self");
            </script> 
        ';
        }else{
            echo '
                <script type="text/javascript">
                    alert("Error");
                    window.open("../chapter.php", "_self");
                </script> 
            ';
            exit();
        }
    }


    $result = mysqli_query($conn,"SELECT * FROM book_chapter WHERE id='" . $_GET['id'] . "'");
    $row= mysqli_fetch_array($result);
?>

<html>
    <head>
        <title>Update Employee Data</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="..\..\..\modules\FacultyPublications\Faculty\css\internal_css.css">
        <link rel="stylesheet" href="..\..\..\modules\FacultyPublications\Faculty\css\util.css">
        <link rel="stylesheet" href="..\..\..\modules\FacultyPublications\Faculty\css\details_collection.css">
        <link rel="stylesheet" href="..\..\..\css\bootstrap.min.css">
        <link rel="stylesheet" href="..\..\..\css/bootstrap_3.4.0.min.css"> 
        <script src="..\..\..\js\jquery-3.4.1.min.js"></script>
        <script src="..\..\..\js\popper-1.14.7.min.js"></script>
        <script src="..\..\..\js\bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
    <body>

        <br>
        <h3 style="margin:2%; text-align :center" id="headingh3"> Verify Book Chapter Records</h3>
        <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="card" id="chapterCard">
                            <div class="card-body" >
                                <div>
                                    <?php if(isset($message)) { echo $message; } ?>
                                </div>
                                <form name="frmUser" method="post" action="">
                                    <div class="form-group">
                                        <label class="col-lg-4 ">ID :</label>
                                        <input readonly type="hidden" name="id" class="form-control col-lg-8 m-b-10" value="<?php echo $row['id']; ?>">
                                        <input readonly type="text" name="id"  class="form-control col-lg-8 m-b-10" value="<?php echo $row['id']; ?>">
                                        
                                        <label class="col-lg-4">SDRN Number :</label>
                                        <input readonly type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sdrn']; ?>" name="sdrn">   
                                        <label class="col-lg-4">Faculty Name :</label>
                                        <input readonly type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['faculty_name'];?> " name="faculty_name1">

                                        <label class="col-lg-4" id="insert"><span>*</span> Authors Name :</label>
                                        <input readonly type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author1']; ?>" placeholder="Enter the name of author 1 here"  name="author1" >
                                        <div class="col-lg-4"></div>
                                        <input readonly type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author2']; ?>" placeholder="Enter the name of author 2 here"  name="author2" >
                                        <div class="col-lg-4"></div>
                                        <input readonly type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author3']; ?>" placeholder="Enter the name of author 3 here"  name="author3" >
                                        <div class="col-lg-4"></div>
                                        <input readonly type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author4']; ?>" placeholder="Enter the name of author 4 here"  name="author4" >
                                        
                                        <label class="col-lg-4">Chapter Name:</label>
                                        <input readonly type="text" name="chapter_name"  class="form-control col-lg-8 m-b-10"  value="<?php echo $row['chapter_name']; ?>">
                                        <label class="col-lg-4">Book Name:</label>
                                        <input readonly type="text" name="book_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['book_name']; ?>">
                                        <br>

                                        <label class="col-lg-4">Through Conference/Journal:</label>
                                        <input readonly type="text" name="through" class="form-control col-lg-8 m-b-10" value="<?php echo $row['through']; ?>">
                                        <br>

                                        <label class="col-lg-4">Publisher Name:</label>
                                        <input readonly type="text" name="publisher_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['publisher_name']; ?>">
                                        <br>

                                        <label class="col-lg-4">ISBN/ISSN No.:</label>
                                        <input readonly type="text" name="isbn_no" class="form-control col-lg-8 m-b-10" value="<?php echo $row['isbn_no']; ?>">
                                        <br>

                                        <label class="col-lg-4">Publication Year:</label>
                                        <input readonly type="date" name="publication_year" class="form-control col-lg-8 m-b-10" value="<?php echo $row['publication_year']; ?>">
                                        <br>

                                         <label class="col-lg-4">Registration date:</label>
                                        <input readonly type="date" name="reg_date" class="form-control col-lg-8 m-b-10" value="<?php echo $row['reg_date']; ?>">
                                        <br>


                                       <label class="col-lg-4">Sanctioned Amount:</label>
                                        <input readonly type="number" name="sanction_amt" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sanction_amt']; ?>"> 
                                        <br>

                                        <label class="col-lg-4">Names of org:</label>
                                        <input readonly type="text" name="org_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['org_name']; ?>">
                                        <br>

                                        <label class="col-lg-4">Awards:</label>
                                        <input readonly type="text" name="awards" class="form-control col-lg-8 m-b-10" value="<?php echo $row['awards']; ?>">
                                        <br>

                                         <label class="col-lg-4">Designation:</label>
                                        <input readonly type="text" name="desgn" class="form-control col-lg-8 m-b-10" value="<?php echo $row['desgn']; ?>">
                                        <br>

                                         <label class="col-lg-4">Name of institute:</label>
                                        <input readonly type="text" name="institute" class="form-control col-lg-8 m-b-10" value="<?php echo $row['institute']; ?>">
                                        <br>


                                        <label class="col-lg-4 ">Category:</label>
                                        <select name="opt1"  class="form-control  m-b-10 col-lg-8" readonly>
                                            <option><?php echo $row['opt1']; ?></option>
                                            <option>--SELECT--</option>
                                            <option value="UG">UG</option>
                                            <option value="PG">PG</option>
                                            <option value="PhD">PhD</option>
                                            <option value="Personal">Personal</option> 
                                        </select>
                                        <br>

                                        <label class="col-lg-4">Option 1:</label>
                                        <textarea class= "form-control col-lg-8 m-b-10 " rows="3" name="opt2" readonly><?php echo $row['opt2']; ?></textarea>
                                        <br>

                                        <label class="col-lg-4">Option 2:</label>
                                        <textarea class= "form-control col-lg-8 m-b-10 " rows="3" name="opt3" readonly><?php echo $row['opt3']; ?></textarea>
                                        <br>
                                       
                                    </div>

                                    <input type="text" name ="id" value="<?php echo $_GET['id'];?>" hidden>

                                    <div class="row m-b-20" style="width:100%; justify-content:center;">
                                        <textarea class="form-control col-lg-8" style="" rows="3" name="v_comment" placeholder="Verification Team Comments" required></textarea>
                                    </div>

                                    
                                    <div class="mx-auto text-center">
                                        <button type="submit" name="revert" class="btn btn-danger ">Revert</button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <button type="submit" name="verify" class="btn btn-success ">Verify</button>
                                    </div>
                                </form>
                                <br>
                            </div>
                        </div>
                    </div>
                </div> 
            </div> 
        </div>
        <br>
        <br>
        <br>
    </body>
</html>