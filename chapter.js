function chapter(){
    document.querySelector(".dashboard_content").innerHTML = `<div><h1>Chapter</h1></div>`;
    const mediaQuery=window.matchMedia("(max-width:970px)");
    if (mediaQuery.matches){
      document.querySelector(".nav_dashboard").style.width = "0";
    }
  }
    