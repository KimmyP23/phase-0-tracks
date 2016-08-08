// Release 0

// start Pseudocode
    // create a function that takes an array of words as the parameter
    // run each element of the array through a loop by index number
    // check the .length of the element
    // store the element in longestWord based on
    //   if it is greater in length of the previously stored value
    // return the longestWord in the array
// end Pseudocode

function findLongestWord(array)
{
  longestWordIndex = 0
  var longestWord = ""
  while (longestWordIndex < array.length)
  {
    var currentWord = array[longestWordIndex];
    if (currentWord.length > longestWord.length) // current word is larger than stored word
    {
      var longestWord = array[longestWordIndex];
    }
    longestWordIndex++;
  }
  return longestWord;
}

// Start Release 0 Driver Code

var array1 = ["first", "happy happy joy joy", "third", "this", "jk", "asdf"];
console.log("array1's longest word is: " + findLongestWord(array1));
var array2 = ["this", "is", "complete", "array"]
console.log("array2's longest word is: " + findLongestWord(array2));
var array3 = ["making", "new", "arrays", "of", "words", "with", "ruby", "%w()", "shenanigans"]
console.log("array3's longest word is: " + findLongestWord(array3));

// Release 1

// Start release 1 Pseudocode
    // create a function that takes 2 variables, name and age
    // test conditionally
    // if input_1 :name or age matches the input_2 :name or age
    // return true if any match between input_1 and input_2 exist
    // name contains or .include?(input2 variable)
    // else return false
// End release 1 Pseudocode

function hashMatcher(personHash1, personHash2)
{
  if ((personHash1.name == personHash2.name) ||
   (personHash1.age == personHash2.age))
  {
    return true;
  } else {
    return false;
  }
}

// Begin release 1 driver code

var personHash1 = {name: "James", age: 39};
var personHash2 = {name: "James", age: 32};

console.log(hashMatcher(personHash1, personHash2));