// Release 0: Horse Arrays
// Declare two Arrays:
	// four colors
	// four names

var colors = ["red", "maroon", "turquoise", "indigo"];
var horses = ["Seabiscuit", "Secretariat", "Bojack", "Shadowfax"];

// Add additional color to color array
// Add additional name to name array 
colors.push("cerulean");
horses.push("American Pharoah");

console.log(colors);
console.log(horses);

// Release 1: Create Object
// Declare a horse object
var horseObject = {};

for (var i = 0; i < colors.length; i++) {
  horseObject[horses[i]] = colors[i];
}

console.log(horseObject);

// Release 2: Car Contructor

function Car(make, model, color) {
  this.make = make;
  this.model = model;
  this.color = color;

  this.startEngine = function() { console.log("Vroom! Vroom!"); };

  console.log("Your car is ready to roll!");
  console.log("Enjoy your new " + this.make + " " + this.model + "!");
}

var car1 = new Car("Audi", "S5", "red");
car1.startEngine();
var car2 = new Car("Honda", "Civic", "black");
car2.startEngine();
var car3 = new Car("Maserati", "Ghibli", "green");
car3.startEngine();
