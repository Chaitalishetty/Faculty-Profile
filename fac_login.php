<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap css  -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        body {
            overflow: hidden;
            background-image: url('rait_homepage.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .input-icons i {
            position: absolute;
        }

        .input-icons {
            width: 100%;
            margin-bottom: 10px;
        }

        .icon {
            padding: 15px;
            min-width: 40px;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            text-align: center;
        }

        .form-group {
            margin-top: 53%;
            margin-left: 25%;

        }
    </style>
    <title>Login</title>
</head>

<body>
    <?php
        if(isset($_POST['submit'])){
            error_reporting(0);
            require "backend/include/conn.php";

            $Sdrn = mysqli_real_escape_string($conn, $_POST['Sdrn']);
            $Password = mysqli_real_escape_string($conn, $_POST['Password']);

            $sql = "SELECT *, concat(First_name,' ',Last_name) AS full_name from `faculty` WHERE `Sdrn` = '$Sdrn' AND `Password` = '$Password';";
            $result = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result) > 0) {
                session_start();
                $row = mysqli_fetch_assoc($result);
                $_SESSION['Sdrn'] = $row['Sdrn'];
                $_SESSION['full_name'] = $row['full_name'];
                $_SESSION['designation'] = $row['Desig'];
                header("location:dashboard.php");
                exit();
            }else{
                echo '
                    <script type="text/javascript">
                        alert("Invalid Credentials");
                        window.open("login.php", "_self");
                    </script> 
                ';
                exit();
            }
        }
    ?>


    <div class="row">

        <div class="col text-center">
            <form class="form-horizontal" id="login_form" action="fac_login.php" method="post">
                <div class="form-group">
                    <p>
                    <h2 style="color: rgba(0, 0, 255, 0.568);"><b>Login</b></h2>
                    </p>
                    <br>
                    <div class="input-icons">
                        <i class="fa fa-user icon"></i>
                        <input class="input-field" type="text" placeholder="Enter srdn" name="Sdrn" id="Sdrn" required>
                        <br><br>
                        <i class="fa fa-envelope icon"></i>
                        <input class="input-field" type="password" name="Password" id="Password"
                            placeholder="Enter Password" required>
                        <br><br>

                        <input class="btn btn-dark btn-lg " role="button" type="submit" name="submit" id="submit"
                            value="Login">
                        <br><br>
                        <a href="register.php">New User? Sign In Here</a>
                    </div>

                </div>

            </form>
        </div>
        <div class="col"> </div>
        <div class="col"> </div>

    </div>

</body>

</html>