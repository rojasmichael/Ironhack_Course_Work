var Car = function (model,noise,wheels){
	this.model = model;
	this.noise = noise;
	this.wheels = 4;

};

Car.prototype.makeNoise = function(){
	console.log(this.model + " makes this noise " +this.noise + " And has this many wheels "+  this.wheels);
}

var toyota = new Car("prius","zoooom");
var mazda = new Car ("mazada", "broom");

toyota.makeNoise();
mazda.makeNoise();
