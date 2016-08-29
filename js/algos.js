// Release 0

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array

// Input: array
// Steps:
    // Create a variable "longestWord" and assign it the value of the first array item
    // Loop through array
      // Create conditional for remaining array values
      // IF item's length is greater than longestWord's length, then replace value of longestWord with that array item
// Output: longestWord

function longest(arr) {
  var longestWord = arr[0];
  for (var i=0; i<arr.length; i++) {
    if (arr[i].length > longestWord.length) {
      longestWord = arr[i];
    }
  }
  return longestWord;
}
