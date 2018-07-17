window.onload=function(){
	var p='<h2>1123123</h2>';
	document.body.innerHTML+=p;
	sessionStorage.setItem('a',11);
	var con=sessionStorage.getItem('a');
	console.log(con);
}