var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    };
    var episodes = JSON.parse(file);
    var episode_sort = episodes.sort(function(a,b){
    	return a.episode_number-b.episode_number
    });
    function isNotGood(episode){
    	return episode.rating < 8.5;
    }
    var episode_rated = episode_sort.filter(isNotGood)

	var print_episode = function(episode) { 
    console.log("Title: " + episode.title + "   Episode #: " + episode.episode_number);
    console.log(episode.description);
    console.log("Rating: " + episode.rating + " ******** ")
	}
	episode_rated.forEach(print_episode);

}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);