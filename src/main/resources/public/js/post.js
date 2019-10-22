var urlFilmRestApi = "api/film"

$.ajaxSetup({
	contentType:"application/json; charset=utf-8"
})

// send the data from the form to the Rest API
function postFilm(){		
	// retrieve data from form as a JSon
	var film = {
			titre: $('#titre').val(),
			date: parseInt($('#date').val(), 10),
			duree:  parseInt($('#duree').val(), 10)
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
		})
		.fail(function(jqXHR, textStatus, errorThrown){
				console.log("Fail adding film:"+textStatus)
		})	
}

// attach event to submit form (prepare POST)
$(window).on('load', function(){
	$("#formFilm").submit(function(event) {
		// prevent default submit mechanism
		event.preventDefault()
		postFilm()
	})
})