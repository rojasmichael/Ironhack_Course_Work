
// var read = require('read');
// options = {
//     prompt: "What's your name?\n>"
// }
// // Our options object, the prompt is simply what will appear in the command line when read is called

// read(options, displayName)
// // The prompt itself, passing options, and using our callback function after input

// function displayName (err, name){
//     console.log("Your name is: " + name)
// }
// // Outputs whatever the user has entered back to the console
var read = require('read');
options = {
	prompt: "What's the capital of this state?\n>"
}

read(options,QuizConstructor)




var Question = function (question,answer){

	this.question = question;
	this.answer = answer;
};

var Quiz = function(){


};


var my_questions = [

Question new("Florida","Talahaessee")
Question new("Georgia","Atlanta")
Question new("New York","New York")
Question new("Alabama","Montgomery")
Question new("Alaska","Juneau")
Question new("Arizona","Phoenix")
Question new("Arkansas","Little Rock")
Question new("California","	Sacramento")
Question new("Colorado","Denver")
Question new("Connecticut","Hartford")
];

var myQuiz = Quiz new(my_questions)


function Ask(){
	var = 0
	if my_questions[].answer === true ||
		my_questions++
	else
		my_questions[].question

};




