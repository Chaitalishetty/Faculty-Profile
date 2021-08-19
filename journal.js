journal= () =>{
    var dash_content=document.querySelector(".dashboard_content");
    dash_content.innerHTML = ` 
   <!-- Categories -->
    <div class="row">
      <br>
      <h1 class="text-center">Journal</br></br></h1>
      <h3 class="col">
      </h3>
    </div>`
  const mediaQuery = window.matchMedia("(max-width:970px)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
  }
  // changes
  var len=Object.keys(bookJournal).length;
  if (bookJournal==""){
    document.querySelector(".col").innerHTML ="No data available ";
  }
  for(var i=0;i<len;i++){
    document.querySelector(".col").innerHTML +="["+(i+1)+"]  ";
  for(var j=0;j<4;j++){
    if(bookChapter[i][j]!=""){
      var title=' " '+bookJournal[i][4]+` " `;
      var journalName=" in "+bookJournal[i][5]+` , `;
      var volume_no=bookJournal[i][5]+` , `;
      var pubDate=bookJournal[i][7]+` . `;
      document.querySelector(".col").innerHTML +=bookJournal[i][j]+` , `;
    }
  }
  document.querySelector(".col").innerHTML +=title;
  document.querySelector(".col").innerHTML +=journalName;
  document.querySelector(".col").innerHTML +=volume_no;
  document.querySelector(".col").innerHTML +=pubDate;
  document.querySelector(".col").innerHTML+=`</br></br>`;
  }
  // for(var i=0;i<len;i++){
  //   document.querySelector(".col").innerHTML +="["+(i+1)+"] ";
  //   for(var j=0;j<8;j++){
  //     if(bookJournal[i][j]!=""){
  //       document.querySelector(".col").innerHTML +=`"` +bookJournal[i][j]+`",`;
  //     }
  //   }
  //   document.querySelector(".col").innerHTML+=`</br></br>`;
  // }
  
  }
  