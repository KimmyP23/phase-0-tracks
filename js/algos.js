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

// Release 1

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// Input: Two objects
// Steps:
  // Set default matchStatus to false
  // Create an array of keys for each object
  // Compare both key arrays and check for identical keys
    // IF identical keys exists, compare their values from both objects
      // IF values match, return true
// Output: true or false

function match(obj1, obj2) {
  var matchStatus = false;
  var matchArr = [];
  var arr1 = Object.keys(obj1);
  var arr2 = Object.keys(obj2);
  for (i=0; i<arr1.length; i++) {
    for (x=0; x<arr2.length; x++) {
      if (arr1[i] === arr2[x]) {
      matchArr.push(arr1[i]);
      }
    }
  }
  if (matchArr.length > 0) {
    for (z=0; z<matchArr.length; z++) {
      if (obj1[matchArr[z]] === obj2[matchArr[z]]) {
        matchStatus = true;
      }
    }
  }
  return matchStatus
}

