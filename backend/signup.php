<?php
    session_start();
    error_reporting(0);
    require "include/conn.php";

    $Sdrn = mysqli_real_escape_string($conn, $_POST['sdrn_no']);
    $full_name = mysqli_real_escape_string($conn, $_POST['full_name']);
    $phone_no = mysqli_real_escape_string($conn, $_POST['phone_no']);
    $email_id = mysqli_real_escape_string($conn, $_POST['email_id']);
    $marrital_status = mysqli_real_escape_string($conn, $_POST['marrital_status']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $c_password = mysqli_real_escape_string($conn, $_POST['c_password']);
    $p_address = mysqli_real_escape_string($conn, $_POST['p_address']);
    $r_address = mysqli_real_escape_string($conn, $_POST['r_address']);
    $bank_acc_no = mysqli_real_escape_string($conn, $_POST['bank_acc_no']);
    $bank_ifsc_code = mysqli_real_escape_string($conn, $_POST['bank_ifsc_code']);
    
    $ug_program = mysqli_real_escape_string($conn, $_POST['ug_program']);
    $ug_score = mysqli_real_escape_string($conn, $_POST['ug_score']);
    $ug_university = mysqli_real_escape_string($conn, $_POST['ug_university']);
    $ug_college = mysqli_real_escape_string($conn, $_POST['ug_college']);

    $pg_program = mysqli_real_escape_string($conn, $_POST['pg_program']);
    $pg_score = mysqli_real_escape_string($conn, $_POST['pg_score']);
    $pg_university = mysqli_real_escape_string($conn, $_POST['pg_university']);
    $pg_college = mysqli_real_escape_string($conn, $_POST['pg_college']);

    $phd_program = mysqli_real_escape_string($conn, $_POST['phd_program']);
    $phd_score = mysqli_real_escape_string($conn, $_POST['phd_score']);
    $phd_university = mysqli_real_escape_string($conn, $_POST['phd_university']);
    $phd_college = mysqli_real_escape_string($conn, $_POST['phd_college']);

    $other_program = mysqli_real_escape_string($conn, $_POST['other_program']);
    $other_score = mysqli_real_escape_string($conn, $_POST['other_score']);
    $other_university = mysqli_real_escape_string($conn, $_POST['other_university']);
    $other_college = mysqli_real_escape_string($conn, $_POST['other_college']);

    $date_of_joining = mysqli_real_escape_string($conn, $_POST['date_of_joining']);
    $rait_experience = mysqli_real_escape_string($conn, $_POST['rait_experience']);
    $other_experience = mysqli_real_escape_string($conn, $_POST['other_experience']);
    $industry_experience = mysqli_real_escape_string($conn, $_POST['industry_experience']);

    // `Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`,`Qualification`, `Desig`, 

    $image = $_FILES['profile_photo']['tmp_name'];
    $image = base64_encode(file_get_contents(addslashes($image)));
    $image_type = 'image/png';

    $aadhar_card = $_FILES['aadhar_card']['tmp_name'];
    $aadhar_card_name = addslashes($_FILES['aadhar_card']['name']);
    $extension = pathinfo($aadhar_card_name, PATHINFO_EXTENSION);
    $file_new_name = $Sdrn. "aadhar_card_" . date('YmjHis') . "." . $extension;
    move_uploaded_file($aadhar_card, "../uploaded_documents/" . $file_new_name);


    $pan_card = $_FILES['pan_card']['tmp_name'];
    $pan_card_name = addslashes($_FILES['pan_card']['name']);
    $extension = pathinfo($pan_card_name, PATHINFO_EXTENSION);
    $file_new_name = $Sdrn. "pan_card" . date('YmjHis') . "." . $extension;
    move_uploaded_file($pan_card, "../uploaded_documents/" . $file_new_name);


    $final_query= "INSERT INTO `faculty` SET `First_name`='$file_new_name', `Contact_no`='', `Addr`='', `Email`='', `Doj`='',`Password`='', `profile_photo`='$image',`image_type`='$image_type' ";
    if (!$result = mysqli_query($conn,$final_query)) {
        exit(mysqli_error());     
    }else{
        echo '
            <script type="text/javascript">
            alert("Signup Successful. Please Login.");
            window.open("../login.php", "_self");
            </script> 
        ';
        exit();
    }

?>