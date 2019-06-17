var el = document.getElementById("getname");
el.addEventListener("click", function(e){
el.value="";
},false);

var fl = document.getElementById("gettitle");
fl.addEventListener("click", function(e){
fl.value="";
},false);

var submitb = document.getElementsByClassName("submit");
submitb.addEventListener("click", function(e){
el.value="";
fl.value="";

},false);