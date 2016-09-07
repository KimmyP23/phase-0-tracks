// Add Border to h1
function addBorder(event){
	event.target.style.border = "5px dashed red";
}

var h1 = document.querySelector("h1");
h1.addEventListener("click", addBorder);

// Change Text of paragraph
var button = document.querySelector("button");
var paragraph = document.querySelector("p");

function changeText(){
	paragraph.textContent = "I LOVE CORGIES!!! <3 <3";
}
button.addEventListener("click", changeText);


// Use button to toggle Background Color
var isPink = false;
var body = document.querySelector("body");

button.addEventListener("click", function(){
	if(isPink){
		body.style.background = "white";
		// isPink = false;
	} else{
		body.style.background = "pink";
		// isPink = true
	}
	isPink = !isPink
});


// Iterate through li collection using for loop
// Use mouseover and mouseout to create hover effect
// Use classList to toggle crossout effect and change color
var lis = document.querySelectorAll("li");
for(var i = 0; i <lis.length; i++){
	lis[i].addEventListener("mouseover", function(){
		this.classList.add("selected");
	});
	lis[i].addEventListener("mouseout", function(){
		this.classList.remove("selected");
	});
	lis[i].addEventListener("click", function(){
		this.classList.toggle("done");
	});
}