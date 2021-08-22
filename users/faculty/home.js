function home() {
  document.querySelector(".dashboard_content").innerHTML = `

  
  
  
  `;
  const mediaQuery = window.matchMedia("(max-width:80%)");
  if (mediaQuery.matches) {
    document.querySelector(".nav_dashboard").style.width = "0";
  }
}
