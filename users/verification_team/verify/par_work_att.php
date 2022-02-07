<?php
    include('..\..\..\include\conn.php');
    if (isset($_SESSION['sdrn'])){
        $sdrn = $_SESSION['sdrn'];
        $faculty_name = $_SESSION['full_name'];
    }

    if(isset($_POST['revert'])){
        require "..\..\..\include\conn.php";
        $sql = "UPDATE `workshop` SET `verified`='0', `v_comment`='".$_POST['v_comment']."' WHERE Srno='".$_POST['id']."' ";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo '
            <script type="text/javascript">
                alert("Workshop Reverted");
                window.open("../WorkshopReport.php", "_self");
            </script> 
        ';
        }else{
            echo '
                <script type="text/javascript">
                    alert("Error");
                    window.open("../WorkshopReport.php", "_self");
                </script> 
            ';
            exit();
        }
    }

    if(isset($_POST['verify'])){
        require "..\..\..\include\conn.php";
        $sql = "UPDATE `workshop` SET `verified`='2', `v_comment`='".$_POST['v_comment']."' WHERE Srno='".$_POST['id']."' ";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo '
            <script type="text/javascript">
                alert("Workshop Verified");
                window.open("../WorkshopReport.php", "_self");
            </script> 
        ';
        }else{
            echo '
                <script type="text/javascript">
                    alert("Error");
                    window.open("../WorkshopReport.php", "_self");
                </script> 
            ';
            exit();
        }
    }

    $result = mysqli_query($conn,"SELECT * FROM workshop WHERE Srno='" . $_GET['id'] . "'");
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
        <script src="..\..\..\js\jquery-3.2.1.slim.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <br>
        <h3 style="margin:2%; text-align :center" id="headingh3"> Verify Workshop Attended Records</h3>
        <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="card" id="chapterCard">
                            <div class="card-body" >
                                <div>
                                    <?php if(isset($message)) { echo $message; } ?>
                                </div>
                                <form name="frmUser" method="post" action="" enctype="multipart/form-data">
                                    <div class="form-group">
                                    
                                        
                                        <label class="col-lg-4">SDRN Number :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['SDRN']; ?>" name="SDRN" readonly>   
                                        <label class="col-lg-4">Faculty Name :</label>
                                        <input type="text" class="form-control col-lg-8 m-b-10" value="<?php echo $row['Name'];?> " name="faculty_name" readonly>

                                        <label class="col-lg-4" id="insert">Criteria :</label>
                                        <input type="hidden" class="form-control" value="<?php echo $row['criteria'];?> " name="criteria">
                                        <select name="criteria"  class="form-control  m-b-10 col-lg-8" disabled >
                                            <option><?php echo $row['criteria']; ?></option>
                                            <!-- <option>--SELECT--</option>
                                            <option value="Workshop">
                                            <option value="STTP">  
                                            <option value="Training Program">
                                            <option value="FDP" >       -->
                                        </select>

                                        <label class="col-lg-4">Name of Workshop:</label>
                                        <input type="text" name="Name_workshop" class="form-control col-lg-8 m-b-10" value="<?php echo $row['Name_workshop']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Sponsorship received from:</label>
                                        <input type="text" name="sponsor" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sponsor']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4">Venue:</label>
                                        <input list="all-collage" class="form-control col-lg-8 m-b-10" value="<?php echo $row['venue'];?>" id="venue" name="Venue" onchange="changevenue()" disabled><!-- data list of id all-collage is placed and end of body  -->
                                        <input type="hidden" name="new_venue" id ="new_venue" placeholder=" Enter venue name"  >
                                        <datalist id="all-collage">
                                            <!-- copy pasted from result.txt file for searchable dropdown of venue -->  
                                            <option value ="Other">
                                            <option value = "Bharati Vidyapeeth College of Engineering, Belapur, Navi Mumbai">
                                            <option value = "Datta Meghe College of Engineering, Airoli, Navi Mumbai">
                                            <option value = "Don Bosco Institute of Technology, Kurla (West)">
                                            <option value = "Dwarkadas J. Sanghvi College of Engineering, Vile Parle West">
                                            <option value = "Fr. Conceicao Rodrigues College of Engineering, Bandra">
                                            <option value = "Fr. Conceicao Rodrigues Institute of Technology, Vashi">
                                            <option value = "Institute of Chemical Technology, Matunga(Autonomous)">
                                            <option value = "Indian Institute of Technology Bombay, Powai">
                                            <option value = "KC College of Engineering, Thane East">
                                            <option value = "K.J. Somaiya College of Engineering, Vidyavihar">
                                            <option value = "K.J. Somaiya Institute of Engineering and Information Technology, Sion">
                                            <option value = "Konkan Gyanpeeth College of Engineering, Karjat">
                                            <option value = "Lokmanya Tilak College of Engineering, Kopar Khairane, Navi Mumbai">
                                            <option value = "M. H. Saboo Siddik College of Engineering - Byculla">
                                            <option value = "Mahatma Gandhi Mission's College of Engineering and Technology, Kamothe">
                                            <option value = "NMIMS Narsee Monjee Institute of Management Studies, Juhu">
                                            <option value = "Padmabhushan Vasantdada Patil Pratishthan's College of Engineering, Sion">
                                            <option value = "Pillai College of Engineering, Panvel">
                                            <option value = "Rajiv Gandhi Institute of Technology, Mumbai">
                                            <option value = "Ramrao Adik Institute of Technology, Nerul">
                                            <option value = "Rizvi College of Engineering, Bandra (West)">
                                            <option value = "Rustomjee Academy for Global Careers, Thane">
                                            <option value = "Sardar Patel College of Engineering - Andheri(West)">
                                            <option value = "Sardar Patel Institute of Technology - Andheri(West)">
                                            <option value = "Shah and Anchor Kutchhi Engineering College, Chembur">
                                            <option value = "Shivajirao S. Jondhale College of Engineering, Dombivali">
                                            <option value = "Sindhudurg Shikshan Prasarak Mandal's College of Engineering, Kankavli">
                                            <option value = "SIES Graduate School of Technology, Nerul">
                                            <option value = "St. Francis Institute of Technology, Borivali">
                                            <option value = "Terna Engineering College, Nerul, Navi Mumbai">
                                            <option value = "Thakur College of Engineering and Technology, Thakur Village, Kandivali">
                                            <option value = "Thadomal Shahani Engineering College Mumbai, Bandra (W)">
                                            <option value = "Vidyalankar Institute of Technology, Wadala(E),Mumbai">
                                            <option value = "Vidyavardhini College of Engineering and Technology, Vasai Road(W)">
                                            <option value = "Usha Mittal Institute of Technology, Santacruz(W), Mumbai">
                                            <option value = "Veermata Jijabai Technological Institute, Matunga, Mumbai">
                                            <option value = "Vivekanand Education Society's Institute of Technology Mumbai, Chembur(E)">
                                            <option value = "Watumull Institute of Electronics Engineering and Computer Technology, Ulhasnagar">
                                            <option value = "Xavier Institute of Engineering Mahim (West)">
                                            <option value = "Yadavrao Tasgaonkar Institute of Engineering & Technology (YTIET), Bhivpuri">
                                        </datalist>

                                        <label class="date col-lg-4">From Date:</label>
                                        <input type="date" name="Date_From" id="startDate" class="form-control col-lg-8 m-b-10" value="<?php echo $row['sdate'];?>" ata-date="" data-date-format="DD/MM/YYYY" placeholder="DD/MM/YYYY" readonly>

                                        <label class="col-lg-4">To Date:</label>
                                        <input type="date" name="Date_To" id="endDate" class="form-control col-lg-8 m-b-10" value="<?php echo $row['edate']; ?>" data-date-format="DD/MM/YYYY" placeholder="DD/MM/YYYY" onchange="cal()" readonly>

                                        <label class="col-lg-4">No. of Days:</label>
                                        <input type="number" name="Days" id="noOfDays" class="form-control col-lg-8 m-b-10" value="<?php echo $row['ndays']; ?>" readonly>

                                        <label class="col-lg-4">Organiser:</label>
                                        <input type="text" name="Organiser" class="form-control col-lg-8 m-b-10" value="<?php echo $row['organiser']; ?>" readonly>
                                        <br>

                                        <label class="col-lg-4 ">Level:</label>
                                        <select name="Choose" id="Choose" class="form-control  m-b-10 col-lg-8" disabled>
                                            <option><?php echo $row['org_type']; ?></option>
                                            <option>--SELECT--</option>
                                            <option value="local">Local</option>
                                            <option value="state">State</option>
                                            <option value="National">National</option>
                                            <option value="International">International</option>
                                        </select>
                                        <br>

                                        <label class="col-lg-4 ">Source of Funding:</label>
                                        <div class="formGroup m-b-10 col-lg-8" style="width:100%; padding:0;">
                                            <select name="Source of Funding"  class="form-control"  style="height: 32px" value="<?php echo $row['sfunding'];?>" onchange="funding(this);" disabled>
                                                <option><?php echo $row['sfunding'];?></option>
                                                <option>--SELECT--</option>
                                                <option value="Self">Self</option>
                                                <option value="Other">Other</option>
                                            </select>
                                            <div id="other_source_box">
                                                <input type="text" class="form-control"id="other_source" name="Other_source" placeholder="enter Source of Funding" style="display: none;" >
                                            </div>
                                        </div>
                                        <br>
                                        
                                        <label class="col-lg-4">Registration Amount:</label>
                                        <input type="number" name="Registration Amount" class="form-control col-lg-8 m-b-10" value="<?php echo $row['ramount']; ?>" readonly>

                                        <label class="col-lg-4">Amount funded:</label>
                                        <input type="number" name="Amount funded" class="form-control col-lg-8 m-b-10" value="<?php echo $row['amount_funded']; ?>" readonly>

                                        <label class="col-lg-4">Travelling Allowance:</label>
                                        <input type="hidden" name="TA" value="<?php echo $row['TA']; ?>">
                                        <div class="formGroup col-lg-8 m-b-10" style="width:100%; padding:0;">
                                            <select  class="form-control col-lg-8 m-b-6" id="TA" name="TA" style="height: 32px" onclick="allowance(this);" disabled>
                                                <option><?php echo $row['TA'];?></option>
                                                <option  value="NA" >NA</option>
                                                <option value="YES">YES</option>
                                            </select>
                                            <div id="Amt">
                                                <input type="number" id="ta_amt" class="form-control col-lg-4 m-b-6" name="TA1" value="<?php echo $row['TA'];?>" placeholder="enter the amount" readonly>
                                            </div>
                                        </div>

                                        <label class="col-lg-4">Upload Document:</label>
                                        <input  class="form-control col-lg-8 m-b-10" type="file" name="file" size="50"><br>
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
    <script>
        function changevenue(){
            var option=(document.getElementById("venue").value);
            if(option=="Other"){
                document.getElementById("new_venue_box").style.display="block";
                var x=(document.getElementById("new_venue").value);
                //document.getElementById("venue").value=x;
            }
            else{
                document.getElementById("new_venue_box").style.display="none";
                document.getElementById("new_venue").defaultValue="NA";                
            }
        }
        function allowance(amt){
            amt_box = document.getElementById("Amt");
            if(amt.value=="YES"){
                document.getElementById("TA").classList.remove('col-lg-12');
                document.getElementById("TA").classList.add('col-lg-8');
                amt_box.style.display="block";
            }
            else{
                document.getElementById("TA").classList.remove('col-lg-8');
                document.getElementById("TA").classList.add('col-lg-12');
                amt_box.style.display="none";
            }
        }
        function cal(){
            var start=new Date(document.getElementById("startDate").value);
            var end =new Date(document.getElementById("endDate").value);
            
            //console.log((end-start)/(24*3600*1000));
            var noday=document.getElementById("noOfDays");
            noday.value = ((end-start)/(24*3600*1000))+1;
            if(noday.value<=0){
                alert("Please select valid end date ");
                document.getElementById("noOfDays").value="00";
                    //write code for wrong end date i.e -ve noOfDays value
            }
        } 
            
        function funding(src){
            if(src.value=="Other"){
                document.getElementById("other_source_box").style.display = "block";
                document.getElementById("other_source").style.display = "block";
                document.getElementById("amt").defaultValue="";
            } else {
                document.getElementById("other_source_box").style.display = "none";
                document.getElementById("other_source").style.display = "none";
                document.getElementById("amt").defaultValue="000";
            }
        }
    </script>
</html>
