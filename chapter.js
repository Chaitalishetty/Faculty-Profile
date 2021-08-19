chapter= () =>{
  var dash_content=document.querySelector(".dashboard_content");
  dash_content.innerHTML = ` 
 <!-- Categories -->
  <div class="chapter">
    <h1 class="text-center">Chapter</br></br></h1>
    <h3 class="col">
    </h3>
  </div>`
const mediaQuery = window.matchMedia("(max-width:970px)");
if (mediaQuery.matches) {
  document.querySelector(".nav_dashboard").style.width = "0";
}

var len=Object.keys(bookChapter).length;
if (bookChapter==""){
  document.querySelector(".col").innerHTML ="No data available ";
}

for(var i=0;i<len;i++){
  document.querySelector(".col").innerHTML +="["+(i+1)+"]  ";
for(var j=0;j<4;j++){
  if(bookChapter[i][j]!=""){
    var chapterName=' " '+bookChapter[i][4]+` " `;
    var bookName=" in "+bookChapter[i][5]+` , `;
    var pubName=bookChapter[i][6]+` , `;
    var pubYear=bookChapter[i][7]+` . `;
    document.querySelector(".col").innerHTML +=bookChapter[i][j]+` , `;
  }
}
document.querySelector(".col").innerHTML +=chapterName;
document.querySelector(".col").innerHTML +=bookName;
document.querySelector(".col").innerHTML +=pubName;
document.querySelector(".col").innerHTML +=pubYear;
document.querySelector(".col").innerHTML+=`</br></br>`;
}
// for(var i=0;i<len;i++){
//   document.querySelector(".col").innerHTML +="["+(i+1)+"] ";
//   for(var j=0;j<8;j++){
//     if(bookChapter[i][j]!=""){
//       document.querySelector(".col").innerHTML +=`"` +bookChapter[i][j]+`",`;
//     }
//   }
//   document.querySelector(".col").innerHTML+=`</br></br>`;
// }

}






