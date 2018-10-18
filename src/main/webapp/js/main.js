var init = function() {
	$('#user').blur( 
	
			function(){
			$('#mensaje').load("checkuser","user="+$('#user').val())
					
			})
}
$().ready(init);