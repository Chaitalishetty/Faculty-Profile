patent= () =>{
    var dash_content=document.querySelector(".dashboard_content");
    dash_content.innerHTML = ` 
   <!-- Categories -->
    <div class="row">
      <br>
      <h1 class="text-center">Patent</br></br></h1>
      <h3 class="col">
      </h3>
    </div>`
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
  }
  // changes
  var len=Object.keys(bookPatent).length;
  if (bookPatent==""){
    document.querySelector(".col").innerHTML ="No data available ";
  }
  for(var i=0;i<len;i++){
    document.querySelector(".col").innerHTML +="["+(i+1)+"]  ";
  for(var j=0;j<4;j++){
    if(bookPatent[i][j]!=""){
      var title=' " '+bookPatent[i][4]+` " , `;
      var Year=bookPatent[i][5]+` . `;
      document.querySelector(".col").innerHTML +=bookPatent[i][j]+` , `;
    }
  }
  
  document.querySelector(".col").innerHTML +=title;
  document.querySelector(".col").innerHTML +=Year;
  document.querySelector(".col").innerHTML+=`</br></br>`;
  }
  
  }
  