function profile() {
  document.querySelector(".dashboard_content").innerHTML = `
  <div class="container-fluid">
  <div class="row">
    <div class="col" style="text-align: center; padding-top:2%" >
      <p ><h2 >Aditi Chhabria</h2></p>
      <p><h4>Assistant professor</h4></p>
    </div>
    <div class="col">
      <img src="hi.jpg" alt="image" height="200px" width="200px" class="rounded-circle" align="right">
    </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col" style="border-left:2px solid grey; border-radius:20px">
      <p class="heading" style="text-decoration: underline;"><b>Personal Details</b></p>
      <table>
        <tr><th>Gender</th><td>Female</td></tr>
        <tr><th>Mobile No. &nbsp;</th><td>+91 1231231231</td></tr>
        <tr><th>Address</th><td>ABCD Building, XYZ Colony, City West</td></tr>
      </table>
    </div>

    <div class="col" style="border-left:2px solid grey; border-radius:20px">
      <p class="heading" style="text-decoration: underline;"><b>Profesional Details</b></p>
      <table>
        <tr><th>Department</th><td>Computer Engineering</td></tr>
        <tr><th>DOJ</th><td>yyyy-mm-dd</td></tr>
        <tr><th>Area of Specialisation &nbsp;&nbsp;</th><td>Data Warehouse and Mining</td></tr>
        <tr><th>Experience</th><td>15</td></tr>
      </table>
    </div>
  </div>
  <br><br>

  <div class="row">



      
    <div class="col">
      <div class="row" style="border-left:2px solid grey; border-radius:20px">
      <div class="col">
        <p class="heading" style="text-decoration: underline;"><b>Education</b></p>
        <table>
        <tr><th>Degree</th><td>Phd</td></tr>
        <tr><th>Qualification &nbsp;&nbsp;</th><td>Pursuing</td></tr>
        <tr><th>University</th><td>Rajasthan</td></tr>
      </table>
      </div></div>
        <br> <br>
      <div class="row" style="border-left:2px solid grey; border-radius:20px">
        <div class="col">
        <p class="heading"><b>MY RECENT WORKS</b></p>
        <table>
        <tr><th>Patents</th><td>1</td></tr>
        <tr><th>Book Chapter </th><td>1</td></tr>
        <tr><th>Workshop</th><td>Organised: 10  Attended:12</td></tr>
        <tr><th>Talks Delivered &nbsp;&nbsp;</th><td>9</td></tr>
      </table>
        </div></div>
    </div>
      
    
    
      
      
  </div>


</div>
  `;
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
  }
}
