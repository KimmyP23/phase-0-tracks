// Release 0: Horse Arrays
var colors = ["red", "yellow", "turquoise", "sparkle"];
var horses = ["Seabiscuit", "Secretariat", "Bojack", "Shadowfax"];

colors.push("cerulean");
horses.push("American Pharoah");

console.log(colors);
console.log(horses);

// Release 1: Create Object
var horseObject = {};

for (var i = 0; i < colors.length; i++) {
  horseObject[horses[i]] = colors[i];
}

console.log(horseObject);
