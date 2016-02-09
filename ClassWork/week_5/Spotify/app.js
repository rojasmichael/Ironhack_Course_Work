$(document).on("click", function() {
	$(".js-submit").on("click", function(event){
		event.preventDefault();
		fetchArtist();
	});


}); 

function fetchArtist(){
	
		var artist=$(".artist").val();
		
		$.ajax({
			url: "https://api.spotify.com/v1/search?type=artist&query="+artist,
			success: function (response){

				var artistFind = response.artists.items.slice(0,4);
					artistFind.forEach(function(objects){
					var html = `
					<li>
						<h2>${objects.name}</h2>
						<p><img src="${objects.images[0].url}"></p>

					</li>
					`;
					$(".js-artist-list").append(html);
				});

			},
			error: function (){
				alert("Error just happended Bro!");
			}
		});
};