<!DOCTYPE html>

<html lang='fr'>
	<head>
		<meta charset="UTF-8">
		<title>Wovies</title>
		
		<link rel="shortcut icon" type="image/x-icon" href="film-xxl.ico">
		<link rel="stylesheet" type="text/css" title="Wovies" href="Wovies.css">
		<meta name="description" content="Films">

	</head>
	<body>
		<header>
			<img src="cinema2.jpg" id="main_pic" alt="Films">
			
			<h1>Dictionnaire films depuis 1888</h1>
		</header>
		
			<div>
		
				<h2>Rechercher<br></h2>
			
				  <form>              
						<p>Genre :</p>
						<select name="par Genre">
							<option value="Action">Action</option>
							<option value="Romance">Romance</option>
							<option value="Comédie">Comédie</option>
							<option value="Science-Fiction">SF</option>
						</select>
						
						<p>Titre : </p>
						<input type="text" size=30 placeholder="Entrer le titre du film" />

						<p><br>Réalisateur : </p>
						<input type="text" size=30 placeholder="Entrer le nom du réalisateur" />

						<p><br>Année : </p>
						<input type="text" size=30 placeholder="Entrer l'année du film" />

						$(document).ready(function() {
							$.ajax({
								type: "GET",
								url: "data.txt",
								dataType: "text",
								success: function(data) {processData(data);}
							 });
						});

						function processData(allText) {
							var allTextLines = allText.split(/\r\n|\n/);
							var headers = allTextLines[0].split(',');
							var lines = [];

							for (var i=1; i<allTextLines.length; i++) {
								var data = allTextLines[i].split(',');
								if (data.length == headers.length) {

									var tarr = [];
									for (var j=0; j<headers.length; j++) {
										tarr.push(headers[j]+":"+data[j]);
									}
									lines.push(tarr);
								}
							}
							// alert(lines);
						}


				 </form>
				<p><br></p>
				<input type="submit" value="Valider">
			</div>
	</body>
</html>