window.addEventListener("load", function()
{
    
	var submit = document.getElementById("sub");
	var deleteF = document.getElementById("deleteF");
	submit.onclick  = function(){
	    
		alert("삭제되었습니다.");
		deleteF.submit();
	    }
});