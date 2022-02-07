<?php
    include('..\..\..\include\conn.php');
    if (isset($_SESSION['sdrn'])){
        $sdrn = $_SESSION['sdrn'];
        $faculty_name = $_SESSION['full_name'];
    }


    if(isset($_POST['revert'])){
        require "..\..\..\include\conn.php";
        $sql = "UPDATE `journal` SET `verified`='0', `v_comment`='".$_POST['v_comment']."' WHERE id='".$_POST['id']."' ";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo '
            <script type="text/javascript">
                alert("Journal Reverted");
                window.open("../journal.php", "_self");
            </script> 
        ';
        }else{
            echo '
                <script type="text/javascript">
                    alert("Error");
                    window.open("../journal.php", "_self");
                </script> 
            ';
            exit();
        }
    }

    if(isset($_POST['verify'])){
        require "..\..\..\include\conn.php";
        $sql = "UPDATE `journal` SET `verified`='2', `v_comment`='".$_POST['v_comment']."' WHERE id='".$_POST['id']."' ";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo '
            <script type="text/javascript">
                alert("Journal Verified");
                window.open("../journal.php", "_self");
            </script> 
        ';
        }else{
            echo '
                <script type="text/javascript">
                    alert("Error");
                    window.open("../journal.php", "_self");
                </script> 
            ';
            exit();
        }
    }


    $result = mysqli_query($conn,"SELECT * FROM journal WHERE id='" . $_GET['id'] . "'");
    $row= mysqli_fetch_array($result);
?>

<html>
    <head>
        <title>Update Employee Data</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="../../../modules\FacultyPublications\Faculty\css/internal_css.css">
        <link rel="stylesheet" href="../../../modules\FacultyPublications\Faculty\css/util.css">
        <link rel="stylesheet" href="../../../modules\FacultyPublications\Faculty\css\details_collection.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </head>
    <body>

        <br>
        <h3 style="margin:2%; text-align :center" id="headingh3"> Verify Journal Records</h3>
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
                                        <input type="hidden" name="id" class="form-control col-lg-8 m-b-10" value="<?php echo $row['id']; ?>">
                                        <input type="text" name="id"  class="form-control col-lg-8 m-b-10" value="<?php echo $row['id']; ?>" readonly>
                                        
                                        <label class="col-lg-4">SDRN Number :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sdrn']; ?>" name="sdrn" readonly>   
                                        <label class="col-lg-4">Faculty Name :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['faculty_name'];?> " name="faculty_name1" readonly>

                                        <label class="col-lg-4" id="insert"><span>*</span> Authors Name :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author1']; ?>" placeholder="Enter the name of author 1 here"  name="author1" readonly >
                                        <div class="col-lg-4"></div>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author2']; ?>" placeholder="Enter the name of author 2 here"  name="author2" readonly >
                                        <div class="col-lg-4"></div>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author3']; ?>" placeholder="Enter the name of author 3 here"  name="author3" readonly >
                                        <div class="col-lg-4"></div>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['author4']; ?>" placeholder="Enter the name of author 4 here"  name="author4" readonly >
                                        
                                        <label class="col-lg-4">Title:</label>
                                        <input type="text" name="page_title" class="form-control col-lg-8 m-b-10" value="<?php echo $row['title']; ?>" readonly>
                                        <br>


                                        <label class="col-lg-4">Journal name:</label>
                                        <input type="text" name="journal_name" class="form-control col-lg-8 m-b-10" value="<?php echo $row['journal_name']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Voulme no:</label>
                                        <input type="number" name="volume_no" class="form-control col-lg-8 m-b-10" value="<?php echo $row['volume_no']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Page no:</label>
                                        <input type="text" name="page_no" class="form-control col-lg-8 m-b-10" value="<?php echo $row['page_no']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">ISBN/ISSN No.:</label>
                                        <input type="text" name="isbn_no" class="form-control col-lg-8 m-b-10" value="<?php echo $row['isbn_no']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">DOI:</label>
                                        <input type="text" name="doi" class="form-control col-lg-8 m-b-10" value="<?php echo $row['doi']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Publication Year:</label>
                                        <input type="date" name="year" class="form-control col-lg-8 m-b-10" value="<?php echo $row['year']; ?>" readonly>
                                        <br>


                                        <label class="col-lg-4">Designation:</label>
                                        <input type="text" name="desg" class="form-control col-lg-8 m-b-10" value="<?php echo $row['desg']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">status:</label>
                                        <input type="text" name="status" class="form-control col-lg-8 m-b-10" value="<?php echo $row['status']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Date of publication:</label>
                                        <input type="date" name="publication_date" class="form-control col-lg-8 m-b-10" value="<?php echo $row['publication_date']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Index of paper:</label>
                                        <input type="text" name="paper_index" class="form-control col-lg-8 m-b-10" value="<?php echo $row['paper_index']; ?>" readonly>
                                        <br>


                                        <label class="col-lg-4">Funding org:</label>
                                        <input type="text" name="funding_org" class="form-control col-lg-8 m-b-10" value="<?php echo $row['funding_org']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Name of institute:</label>
                                        <input type="text" name="institute" class="form-control col-lg-8 m-b-10" value="<?php echo $row['institute']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Impact factot:</label>
                                        <input type="text" name="impact_factor" class="form-control col-lg-8 m-b-10" value="<?php echo $row['impact_factor']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">NTNL :</label>
                                        <input type="text" name="ntnl_no" class="form-control col-lg-8 m-b-10" value="<?php echo $row['ntnl_no']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Indexed in IEEE Explorer:</label>
                                        <input type="text" name="indexed_in" class="form-control col-lg-8 m-b-10" value="<?php echo $row['indexed_in']; ?>" readonly>
                                        <br>


                                        <label class="col-lg-4">No of times cited:</label>
                                        <input type="number" name="no_of_times" class="form-control col-lg-8 m-b-10" value="<?php echo $row['no_of_times']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Register amount:</label>
                                        <input type="number" name="reg_amount" class="form-control col-lg-8 m-b-10" value="<?php echo $row['reg_amount']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Amount sanctioned:</label>
                                        <input type="number" name="amount_sanctioned" class="form-control col-lg-8 m-b-10" value="<?php echo $row['amount_sanctioned']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Award:</label>
                                        <input type="text" name="awards" class="form-control col-lg-8 m-b-10" value="<?php echo $row['awards']; ?>" readonly>
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