navbar = () => {
  document.querySelector(".dashboard").innerHTML = `<nav class="nav_dashboard">  
    <span style="font-size:40px;cursor:pointer;margin: 10px;" onclick="closeNav()">&times;</span><!--cross icon-->
          <div class="nav_img" style="text-align:center;margin: 20px 0px;">
            <img src="../../include/images/dylogo.png" style="width:170px"/>
          </div>
          <div>
              <ul>
                <li><a href="home.php" id="home">Home</a></li>
                <li><a href="profile.php" id="profile">Profile</a></li>
                <li class="sub_menu"><h3><i class="fa fa-book"></i>&nbsp;Publications&nbsp;<div class='fa fa-caret-down right'></div></h3>
                  <ul>
                    <li><a href="../../modules/FacultyPublications/Faculty/src/Details_collection/page1.php">Add/Edit Details</a></li>
                    <li><a href="chapter.php">Book Chapter</a></li>
                    <li><a href="publication.php" >Book Publications</a></li> 
                    <li><a href="patent.php">Patent</a></li> 
                    <li><a href="copyright.php">Copyright</a></li>
                    <li><a href="journal.php">Journal</a></li> 
                    <li><a href="conference.php">Conference</a></li>
                  </ul>  
                </li>  
                <li class="sub_menu"><h3><i class="fa fa-book"></i>&nbsp;Participation&nbsp;<div class='fa fa-caret-down right'></div></h3>
                  <ul>
                    <li><a href="../../modules/FacultyParticipation/faculty/welcome.php">Add/Edit Details</a></li>
                    <li><a href="WorkShopReport.php">Workshop</a></li>
                    <li><a href="OrientationReport.php" >Orientation</a></li> 
                    <li><a href="SyllabusReport.php">Syllabus</a></li>
                  </ul>  
                </li>  
                <li class="sub_menu"><h3><i class="fa fa-book"></i>&nbsp;Expertise&nbsp;<div class='fa fa-caret-down right'></div></h3>
                  <ul>
                    <li><a href="../../modules/SS1/Faculty Experties/detail.php">Add/Edit Details</a></li>
                    <li><a href="awards.php">Awards</a></li>
                    <li><a href="comp_exam.php">Exams</a></li>
                    <li><a href="med_exam.php">Medical Exams</a></li>
                    <li><a href="fac_res.php">Faculty-Resource</a></li>
                  </ul>  
                </li>
                <li class="sub_menu"><h3><i class="fa fa-book"></i>&nbsp;Workshop&nbsp;<div class='fa fa-caret-down right'></div></h3>
                  <ul style="overflow-y:hidden">
                    <li><a href="../../modules/WorkshopTool/faculty/dashboard.php">Add/Edit Details</a></li>
                    <li><a href="workshop.php">Workshop Conducted</a></li>
                  </ul>  
                </li>  
           </ul>
          </div>
  </nav>`;
};
header = () => {
  document.querySelector(".dashboard_container").innerHTML = `<div class="dashboard_header">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span><!--hamburger icon-->
  <h2>Dashboard</h2>
  <a class="btn btn-light" href="../../logout.php" style="margin-left:70%">Logout</a>
</div>`
}
function openNav() {
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector('.nav_dashboard').style.width = "250px";
  }
}

function closeNav() {
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
    document.querySelector(".dashboard_container").style.marginLeft = "0";
    document.querySelector(".dashboard_container").style.width = "100vw";
  }
}
