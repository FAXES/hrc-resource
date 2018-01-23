$(function(){
	window.onload = function(e){
		window.addEventListener('message', function(event){

			var item = event.data;
			if (item !== undefined && item.type === "disclaimer") {

				if (item.display === true) {
					$('#disclaimer').delay(100).fadeIn( "slow" );
				} else if (item.display === false) {
					$('#disclaimer').fadeOut( "slow" );
				}
			}

			if (item !== undefined && item.type === "rules") {

				if (item.display === true) {
					$('#rules').delay(100).fadeIn( "slow" );
				} else if (item.display === false) {
					$('#rules').fadeOut( "slow" );
				}
			}
			
			if (item !== undefined && item.type === "cmds") {

				if (item.display === true) {
					$('#cmds').delay(100).fadeIn( "slow" );
				} else if (item.display === false) {
					$('#cmds').fadeOut( "slow" );
				}
			}
		});
	};
});