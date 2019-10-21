// send the data from the form to the Rest API
function postFilm(){		
	// retrieve data from form as a JSon
	var film = {
			titre: $('#titre').val(),
			duree:  $('#duree').val()
	}
	var filmJSON = JSON.stringify(film)
	console.log("Film sent:")
	console.log(film)
	console.log(filmJSON)
	// send the JSON data to rest api in POST
	$.post(urlFilmRestApi,filmJSON)
		.done(function(filmResponse) {
				console.log("Film added:")
				console.log(filmResponse)
				// refresh list film
				displayOneFilmMore(filmResponse)
		})
		.fail(function(jqXHR, textStatus, errorThrown){
				console.log("Fail adding film:"+textStatus)
		})	
}

// After the page is loaded :
// display films (GET)
// and attach event to submit form (prepare POST)
$(window).on('load',function(){
	//getAndDisplayAllFilms()
	$("#formFilm").submit(function(event) {
		// prevent default submit mechanism
		event.preventDefault()
		postFilm()
	})
})