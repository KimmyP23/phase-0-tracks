//Psuedocode:
// Add a reverse function
// input: takes a str
// steps:
	//1. declare a function reverse that takes in a string as a parameter
	//2. declare a new str var
	//3. with a for loop, start at the end of the string(using index) until the you reach the start of the string, decrease by -1  
	//4. add each letter to the new string variable
// output: the str inreverse

function reverse(string){
  var new_string = '';
  for(var i = string.length - 1; i >= 0; i--){
    new_string += string[i];
  }
  return new_string;
}
// Reverse function using an array

function reverse2(string){
	var reverseArr = []
	for(var i = string.length-1; i >= 0; i-- ){
		reverseArr.push(string[i]);
	}
	return (reverseArr.join(''));
}

//DRIVER CODE
console.log(reverse("peaches"));
console.log(reverse2("peaches"));

var reverse_string = reverse("hello");

if (1 == 1){
  console.log(reverse_string);
}


