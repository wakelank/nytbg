function clicker(){
  var thediv=document.getElementById('displaybox');
  if(thediv.style.display == "none"){
    thediv.style.display = "";
    thediv.innerHTML = "<table width='90%' height='90%'><tr><td align='center' valign='middle' width='90%' height='90%'><form class='register'><button type='submit' id='search'>Register</button><br><br><a href='#' onclick='return clicker();'>CLOSE WINDOW</a></td></tr></table>";
  }else{
    thediv.style.display = "none";
    thediv.innerHTML = '';
  }
  return false;
}
