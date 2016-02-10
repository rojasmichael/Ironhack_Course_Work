if ("geolocation" in navigator){
	

	getUserLocation();
}

else{
	

}


function getUserLocation (){
	navigator.geolocation.getCurrentPosition( successCallback, errorCallback);
	// optional 3rd parameter: optionsObj

}


function successCallback (position){
	console.log("SUCCESS!!");
	console.log(position);
	console.log("Lat",position.coords.latitude);
	console.log("Long", position.coords.longitude);


} 

function errorCallback (error){
	console.log("ERROR", error);
}