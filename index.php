<!doctype html>
<html lang="en">
<?php session_start();?>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="css\font-awesome.min.css">
    <!-- Bootstrap css  -->
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <link rel="stylesheet" href="css\login.css">
    <title>Login</title>
</head>

<body>
    <?php
        if(isset($_POST['btn-signin'])){
            // error_reporting(0);
            require "include\conn.php";

            $Sdrn = mysqli_real_escape_string($conn, $_POST['Sdrn']);
            $Password = mysqli_real_escape_string($conn, $_POST['Password']);

            $sql = "SELECT *, concat(First_name,' ',Middle_name,' ',Last_name) AS full_name,Desig  from `faculty` WHERE `Sdrn` = '$Sdrn' AND `Password` = '$Password';";
            $result = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result) > 0) {
                
                $row = mysqli_fetch_assoc($result);
                $_SESSION['sdrn'] = $row['Sdrn'];
                $_SESSION['full_name'] = $row['full_name'];
                $_SESSION['designation'] = $row['Desig'];
                $_SESSION['login_user'] = $row['Sdrn'];
                $_SESSION['Password']=$row['Password'];
                $_SESSION['Email'] = $row['Email'];
                $_SESSION['First_name'] = $row['First_name'];
                $_SESSION['Contact_no'] = $row['Contact_no'];
                $_SESSION['Middle_name'] = $row['Middle_name'];
                $_SESSION['Last_name'] = $row['Last_name'];
                $_SESSION['Sdrn']=$row['Sdrn'];
                $_SESSION['firstname']=$row['First_name'];
                $_SESSION['middlename']=$row['Middle_name'];
                $_SESSION['thirdname']=$row['Last_name'];
                switch (strtolower($_SESSION['designation'])) {
                    case 'hod' :
                        header("location:users/hod/home.php");
                        exit();
                    case 'principal':
                        header("location:users/principal/home.php");
                        exit();
                    case 'verification':
                        header("location:users/verification_team/home.php");
                        exit();
                    default:
                        echo '
                        <script type="text/javascript">
                            window.open("users/faculty/home.php", "_self");
                        </script> 
                    ';
                        exit();
                }
            }else{
                echo '
                    <script type="text/javascript">
                        alert("Invalid Credentials");
                        window.open("index.php", "_self");
                    </script> 
                ';
                exit();
            }
        }
    ?>


<div class="container-fluid">
        <div class="row">
            <!-- leftside -->
            <div class="col-sm-6 col-md-7 " id="leftside">
                <div class="row">
                    <a href="">
                        <img src="include\images\dylogo.png" alt="Dy Patil" class="img-fluid p-3 p-md-4">
                    </a>
                </div>
                <div class="col" id="backgroundimg">
                    <img src="include\images\blue.svg" class="img-fluid p-5 .d-md-none .d-lg-block" alt="">
                </div>
            </div>
            <!-- rightside -->
            <div class="col" >
                <div class="row justify-content-center align-items-center" id="rightside">
                    <!-- Login form -->
                    <form id="login_form" action="index.php" method="post" class="w-75">
                        <div class="form-group text-center mb-md-5" style="margin-left:-700px; position: absolute;">
                            <label for="" class="h2 font-weight-bold">Welcome to<br><span style="color:#bd0929"><b>Faculty Profile System</b></span></label>
                        </div>
                        <div class="form-group text-center mb-md-5"  style="position: relative;">
                            <label for="" class="h2 font-weight-bold">Sign In</label>
                        </div>
                        <div class="form-group shadow-sm">
                          <input type="text" name="Sdrn" placeholder="username" class="form-control btn-lg border-0" id="Sdrn" >
                        </div>
                        <div class="form-group shadow-sm">
                          <input type="Password" name="Password" placeholder="Password" class="form-control btn-lg border-0" id="Password">
                        </div>
                        <div class="form-group shadow-sm mt-4">
                            <button class="btn btn-lg w-100" id="btn-signin" name="btn-signin">Sign In</button>
                        </div>
                        <div class="text-center" style = "font-size:16px"><a href="register.php">New User? Sign In Here</a></div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>

</html>