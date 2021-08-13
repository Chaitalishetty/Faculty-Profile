conference= () =>{
    var dash_content=document.querySelector(".dashboard_content");
    dash_content.innerHTML = ` 
   <!-- Categories -->
    <div class="row">
      <br>
      <h1 class="text-center">Conference</h1>
      <h3 class="col">
      </h3>
    </div>`
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
  }
  // changes
  var len=Object.keys(bookConf).length;
  if (bookConf==""){
    document.querySelector(".col").innerHTML ="No data available ";
  }
  for(var i=0;i<len;i++){
    document.querySelector(".col").innerHTML +="["+(i+1)+"] ";
    for(var j=0;j<8;j++){
      if(bookConf[i][j]!=""){
        document.querySelector(".col").innerHTML +=`"` +bookConf[i][j]+`",`;
      }
    }
    document.querySelector(".col").innerHTML+=`</br></br>`;
  }
  
  }
  