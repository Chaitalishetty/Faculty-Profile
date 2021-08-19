copyright= () =>{
  var dash_content=document.querySelector(".dashboard_content");
  dash_content.innerHTML = ` 
 <!-- Categories -->
  <div class="row">
    <br>
    <h1 class="text-center">Copyright</br></br></h1>
    <h3 class="col">
    </h3>
  </div>`
const mediaQuery = window.matchMedia("(max-width:970px)");
if (mediaQuery.matches) {
  document.querySelector(".nav_dashboard").style.width = "0";
}
// changes
var len=Object.keys(bookCopy).length;
if (bookCopy==""){
  document.querySelector(".col").innerHTML ="No data available ";
}
for(var i=0;i<len;i++){
  document.querySelector(".col").innerHTML +="["+(i+1)+"]  ";
for(var j=0;j<4;j++){
  if(bookCopy[i][j]!=""){
    var title=' " '+bookCopy[i][4]+` " .`;
    document.querySelector(".col").innerHTML +=bookCopy[i][j]+` , `;
  }
}

document.querySelector(".col").innerHTML +=title;
document.querySelector(".col").innerHTML+=`</br></br>`;
}
// for(var i=0;i<len;i++){
//   document.querySelector(".col").innerHTML +="["+(i+1)+"] ";
//   for(var j=0;j<5;j++){
//     if(bookCopy[i][j]!=""){
//       document.querySelector(".col").innerHTML +=`"` +bookCopy[i][j]+`",`;
//     }
//   }
//   document.querySelector(".col").innerHTML+=`</br></br>`;
// }

}
