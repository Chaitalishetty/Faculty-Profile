<?php
    include('..\..\..\include\conn.php');
    if (isset($_SESSION['sdrn'])){
        $sdrn = $_SESSION['sdrn'];
        $faculty_name = $_SESSION['full_name'];
    }

    if(count($_POST)>0) {
        mysqli_query($conn,"UPDATE book_chapter set id= '" . $_POST['id'] . "', author1='" . $_POST['author1'] . "', 
        author2='" . $_POST['author2'] . "', author3='" . $_POST['author3'] . "' ,
        author4='" . $_POST['author4'] . "' , chapter_name='" . $_POST['chapter_name'] . "' ,
        book_name='" . $_POST['book_name'] . "' ,through='" . $_POST['through'] . "' ,
        publisher_name='" . $_POST['publisher_name'] . "' ,isbn_no='" . $_POST['isbn_no'] . "' ,
        publication_year='" . $_POST['publication_year'] . "' ,
        reg_date='" . $_POST['reg_date'] . "' ,
        sanction_amt='" . $_POST['sanction_amt'] . "' ,
        org_name='" . $_POST['org_name'] . "' ,
        awards='" . $_POST['awards'] . "' ,
        desgn='" . $_POST['desgn'] . "' ,
        institute='" . $_POST['institute'] . "' ,
        opt1='" . $_POST['opt1'] . "' ,
        opt2='" . $_POST['opt2'] . "' ,opt3='" . $_POST['opt3'] . "', verified='1'  WHERE id='" . $_POST['id'] . "'");
        echo '<script>alert("Record modified successfully!");
        window.location = "../verify.php";
        </script>';    
    }
    $result = mysqli_query($conn,"SELECT * FROM book_chapter WHERE id='" . $_GET['id'] . "'");
    $row= mysqli_fetch_array($result);
?>

<html>
    <head>
        <title>Update Employee Data</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="..\..\..\modules\FacultyPublications\Faculty\css/internal_css.css">
        <link rel="stylesheet" href="..\..\..\modules\FacultyPublications\Faculty\css/util.css">
        <link rel="stylesheet" href="..\..\..\modules\FacultyPublications\Faculty\css\details_collection.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css\bootstrap.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </head>
    <body>
   
        <br>
        <h3 style="margin:2%; text-align :center" id="headingh3"> Update Book Chapter Records</h3>
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
                                        <input type="hidden" name="id" class="form-control col-lg-8 m-b-10" value="<?php echo $row['id']; ?>">
                                        <label class="col-lg-4"> <b>Verification Team Comment:</b></label>
                                        <textarea  class= "form-control col-lg-8 m-b-10 " style="" rows="3" name="v_comment" placeholder="Verification Team Comments" readonly><?php echo $row['v_comment'];?></textarea>
                                        
                                        <label class="col-lg-4">SDRN Number :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sdrn']; ?>" name="sdrn" readonly>   
                                        <label class="col-lg-4">Faculty Name :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['faculty_name'];?> " name="faculty_name1">

                                        <label class="col-lg-4" id="insert"><span>*</span> Authors Name :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author1']; ?>" placeholder="Enter the name of author 1 here"  name="author1" >
                                        <div class="col-lg-4"></div>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author2']; ?>" placeholder="Enter the name of author 2 here"  name="author2" >
                                        <div class="col-lg-4"></div>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author3']; ?>" placeholder="Enter the name of author 3 here"  name="author3" >
                                        <div class="col-lg-4"></div>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author4']; ?>" placeholder="Enter the name of author 4 here"  name="author4" >
                                        
                                        <label class="col-lg-4">Chapter Name:</label>
                                        <input type="text" name="chapter_name"  class="form-control col-lg-8 m-b-10"  value="<?php echo $row['chapter_name']; ?>">
                                        <label class="col-lg-4">Book Name:</label>
                                        <input type="text" name="book_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['book_name']; ?>">
                                        <br>

                                        <label class="col-lg-4">Through Conference/Journal:</label>
                                        <input type="text" name="through" class="form-control col-lg-8 m-b-10" value="<?php echo $row['through']; ?>">
                                        <br>

                                        <label class="col-lg-4">Publisher Name:</label>
                                        <input type="text" name="publisher_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['publisher_name']; ?>">
                                        <br>

                                        <label class="col-lg-4">ISBN/ISSN No.:</label>
                                        <input type="text" name="isbn_no" class="form-control col-lg-8 m-b-10" value="<?php echo $row['isbn_no']; ?>">
                                        <br>

                                        <label class="col-lg-4">Publication Year:</label>
                                        <input type="date" name="publication_year" class="form-control col-lg-8 m-b-10" value="<?php echo $row['publication_year']; ?>">
                                        <br>

                                         <label class="col-lg-4">Registration date:</label>
                                        <input type="date" name="reg_date" class="form-control col-lg-8 m-b-10" value="<?php echo $row['reg_date']; ?>">
                                        <br>


                                       <label class="col-lg-4">Sanctioned Amount:</label>
                                        <input type="number" name="sanction_amt" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sanction_amt']; ?>"> 
                                        <br>

                                        <label class="col-lg-4">Names of org:</label>
                                        <input type="text" name="org_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['org_name']; ?>">
                                        <br>

                                        <label class="col-lg-4">Awards:</label>
                                        <input type="text" name="awards" class="form-control col-lg-8 m-b-10" value="<?php echo $row['awards']; ?>">
                                        <br>

                                         <label class="col-lg-4">Designation:</label>
                                        <input type="text" name="desgn" class="form-control col-lg-8 m-b-10" value="<?php echo $row['desgn']; ?>">
                                        <br>

                                         <label class="col-lg-4">Name of institute:</label>
                                        <input type="text" name="institute" class="form-control col-lg-8 m-b-10" value="<?php echo $row['institute']; ?>">
                                        <br>


                                        <label class="col-lg-4 ">Category:</label>
                                        <select name="opt1"  class="form-control  m-b-10 col-lg-8">
                                            <option><?php echo $row['opt1']; ?></option>
                                            <option>--SELECT--</option>
                                            <option value="UG">UG</option>
                                            <option value="PG">PG</option>
                                            <option value="PhD">PhD</option>
                                            <option value="Personal">Personal</option> 
                                        </select>
                                        <br>

                                        <label class="col-lg-4">Option 1:</label>
                                        <textarea class= "form-control col-lg-8 m-b-10 " rows="3" name="opt2"><?php echo $row['opt2']; ?></textarea>
                                        <br>

                                        <label class="col-lg-4">Option 2:</label>
                                        <textarea class= "form-control col-lg-8 m-b-10 " rows="3" name="opt3"><?php echo $row['opt3']; ?></textarea>
                                        <br>


                                        <input type="submit" name="submit" id="submit" value="Submit" class="button btn btn-primary col-lg-4 btn-lg m-t-10">
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