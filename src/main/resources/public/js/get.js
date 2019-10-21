
var urlFilmRestApi = "http://localhost:8080/api/film"

$.ajaxSetup({
	contentType:"application/json; charset=utf-8"
})
	

// display data in the HTML
function displayOneFilmMore(film){
	console.log("Display film:")
	console.log(film)
	var filmHTML = 	$("<li></li>").text(
			film['titre'] + ' (' 
			+  film['duree'] + 'min)'
			)
	$("#listFilm").append(filmHTML)
}

function displayFilms(films) {
	$("#listFilm").empty()
	$.each(films, function( i, film) {
		displayOneFilmMore(film)
	})
}

function getAndDisplayAllFilms() {
	// get data from the rest API
	$.getJSON(urlFilmRestApi)
	.fail(function(jqXHR, textStatus, errorThrown){
		console.log("unable to access rest api ("
				+urlFilmRestApi
				+"):" +textStatus)
	})
	.done(displayFilms)
}

// After the page is loaded :
// display films (GET)
// and attach event to submit form (prepare POST)
$(window).on('load',function(){
	getAndDisplayAllFilms()
	$("#formFilm").submit(function(event) {
		// prevent default submit mechanism
		event.preventDefault()
		//postFilm()
	})
})
