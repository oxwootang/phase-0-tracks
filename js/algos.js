// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// function will take one argument-an array of words or phrases
// function requires a variable to store the most current longest word
// function requires a process to check the length of the most current longest word against the next word in the array
// return the longest word/phrase

function longest(array) {
  var longest = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i];
    }
    else {
      continue;
    }
  }
  return longest
}

console.log(longest(['a', 'ab', 'abc', 'd', 'efgh']));
console.log(longest(['apple', 'car', 'abracadabra']));