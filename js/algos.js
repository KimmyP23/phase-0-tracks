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