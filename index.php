<!doctype html>
<html lang="en">
<?php session_start();?>
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
        :root{
            --primary: #9A1C32;
            --light: #ffffff;
            --grey: #efefef;
        }

        body {
            font-family: "Nunito","-apple-system","BlinkMacSystemFont","Segoe UI","Roboto","Helvetica Neue",Arial,sans-serif;
            overflow: hidden;
        }


        /* Misc */
        .bg-main{
            background-color: var(--primary) !important;
        }
        .primary-color{
            color: var(--primary) !important;
        }
        .strip-color{
            background-color: #dae0e5 !important;
        }
        a:hover{
            text-decoration: none;
        }
        .username{
            background-color: black;
        }


        /* >> Login Page */
        /* Left Side */
        #backgroundimg{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80%;
        }

        /* Sidebar */
        .sidebar{
            background-color: var(--grey);
        }
        .fa{
            font-weight: bold;
            font-size: large;
        }
        .fa p{
            font-size: large;
        }

        /* Right Side */
        #rightside{
            height: 100vh;
            background-color: var(--grey);
        }
        #btn-signin{
            background-color: var(--primary);
            color: var(--light);
            font-weight: 500;
        }

        /* file input */
        input[type="file"]{
            display: none;
        }
        .file-label{
            width: 280px;
            height: 80px;
            background-color: var(--light);
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            border: 2px dashed rgba(117, 117, 117, 0.5);
        }
        .text-sm{
            font-size: smaller;
        }

        /* Document Submit Button */
        #document-submit{
            display: flex;
            justify-content: center;
            align-items: flex-end;
            text-align: center;
        }
        #document-submit div button{
            width: 200px;
        }

        /* Main-Content */

        /* Top Navigation Bar */
        #topbar{
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-self: center;
        }
        #searchbar:active{
            border-color: var(--primary);
        }
        .avatar{
            max-width: 45px;
        }
        #searchbtn {
            background-color: var(--primary);
            color: var(--light);
        }
        .dropdown-menu a:active{
            background-color: var(--primary);
        }

        /* Actual Main Content */
        .main-content{
            border-radius: 20px 0 0 0;
            background-color: var(--grey);
            color: black;
            overflow-y: auto;
            justify-content: center;
        }
        #schedule-card{
            margin: 20px auto;
        }


        .card-text{
            color: #ffffff;
            font-weight: 100
        }

        #accordionExample{
            justify-content: center;
            margin: 0 auto;
            width: 80%;
        }


        /* Card Styling */
        .item{
            padding-left:5px;
            padding-right:5px;
        }
        .item-card{
            transition:0.5s;
            cursor:pointer;
        }
        .item-card-title{  
            font-size:15px;
            transition:1s;
            cursor:pointer;
        }
        .item-card-title i{  
            font-size:15px;
            transition:1s;
            cursor:pointer;
            color:#ffa710
        }
        .card-title i:hover{
            transform: scale(1.25) rotate(100deg); 
            color:#18d4ca;
            
        }
        .card:hover{
            transform: scale(1.04); /* previous scale value 1.05 */
            box-shadow: 0px 10px 40px rgba(173, 173, 173, 0.3);
            border: 0px;
        }
        .card-text{
            height:80px;  
        }
        
        .card::before, .card::after {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            transform: scale3d(0, 0, 1);
            transition: transform .3s ease-out 0s;
            background: rgba(255, 255, 255, 0.1);
            content: '';
            pointer-events: none;
            
        }
        .card::before {
            transform-origin: left top;
        }
        .card::after {
            transform-origin: right bottom;
        }
        .card:hover::before, .card:hover::after, .card:focus::before, .card:focus::after {
            transform: scale3d(1, 1, 1);
        }

        /* 07 july 2021 table resizng issue */
            /*
        .table-hover tbody tr:hover td, .table-hover tbody hr:hover th {
            background-color: rgba(154, 28, 50, 0.3);
        }
        */
        table {
            /*
            border: 1px solid #ccc;
            */
            border-collapse: collapse;
            margin: 0;
            padding: 0;
            width: 100%;
            table-layout: auto;
        }

        
        table tr {
            /*background-color: #f8f8f8;
            border: 1px solid #ddd;
            */
            padding: .35em;
        }
        
        table th,
        table td {
            padding: .625em;
            text-align: center;
        }
        
        table th {
            font-size: .85em;
            letter-spacing: .1em;
            text-transform: uppercase;
        }
        
        @media screen and (max-width: 600px) {
            table {
            border: 0;
            }
        
            table caption {
            font-size: 1.3em;
            }
            
            table thead {
            border: none;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
            }
            
            table tr {
            
            border-bottom: 10px solid var(--grey);
            display: block;
            }
            
            table td {
                /*
            border-bottom: 1px solid #ddd;
            */
            display: block;
            font-size: .8em;
            text-align: right;
            }
            
            table td::before {
            /*
            * aria-label has no advantage, it won't be read inside a table
            content: attr(aria-label);
            */
            content: attr(data-label);
            float: left;
            font-weight: bold;
            text-transform: uppercase;
            }
            
            table td:last-child {
            border-bottom: 0;
            }
        }
        .scrollme {
            overflow-x: auto;
        }


        /* Media Query */
        /* Screen size >= 768px*/
        @media (min-width: 768px) {
            .sidebar{
                background-color: var(--grey);
                height: 100vh;
                width: 20%;
                font-weight: 400px;
            }
            #menu-list{
                display: inline-flex;
                flex-direction: column;
            }
            #content {
                height: 90vh;
            }
            #content::-webkit-scrollbar{
                display: none;
            }

        }
        /* Screen size <= 768px*/
        @media (max-width: 768px) {
            body{
                overflow: auto;
            }
            .main-content{
                border-radius: 15px 15px 0 0;
                margin: 1px;
                justify-content: center;

            }
            #menu-list{
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-self: center;
            }
            #rightside{
                height: 50vh;
            }

        }

        /* Screen size <= 575.98 */
        @media (max-width: 575.98px) {
            #rightside{
                height: 50vh;
            }
        }
    </style>
    <title>Login</title>
</head>

<body>
    <?php
        if(isset($_POST['btn-signin'])){
            // error_reporting(0);
            require "backend/include/conn.php";

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
                        <img src="include/images/dylogo.png" alt="Dy Patil" class="img-fluid p-3 p-md-4">
                    </a>
                </div>
                <div class="col" id="backgroundimg">
                    <img src="include/images/blue.svg" class="img-fluid p-5 .d-md-none .d-lg-block" alt="">
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