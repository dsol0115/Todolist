var el = document.getElementById("getname");
el.addEventListener("click", function(e){
el.value="";
},false);

var fl = document.getElementById("gettitle");
fl.addEventListener("click", function(e){
fl.value="";
},false);

var eraseb = document.getElementById("erase");
eraseb.addEventListener("click", erase);
function erase(e){
el.value="";
fl.value="";
document.getElementsByName("sequence")[0].checked=false;
document.getElementsByName("sequence")[1].checked=false;
document.getElementsByName("sequence")[2].checked=false;
}

var submitb= document.getElementById("submit");
submitb.addEventListener("click", submitcheck);
   function submitcheck(e){
   	if(document.getElementById("getname").value==="")
   		{	
   			alert("Input Name!");
   			return false;
   		}
   	if(document.getElementById("gettitle").value===""){
   		alert("Input Title!");
   		return false;
   	}
       if(document.getElementsByName("sequence")[0].checked===false && document.getElementsByName("sequence")[1].checked===false && document.getElementsByName("sequence")[2].checked===false) {
                alert("Check Sequence!");
                return false;
        }
       
       return true;
   }
  


