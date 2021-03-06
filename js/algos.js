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

// write a function that takes two objects and checks to see if the objects share at least one key-value pair
// if at least one key-value pair matches, return true; else return false
// the function should take two objects as arguments

function objectMatch(obj1, obj2) {
  for (property1 in obj1) {
    for (property2 in obj2) {
      if (obj1[property1] == obj2[property2]) {
        return true;
      }
      else {
        continue;
      }
    }
  }
  return false;
}

// write a function that takes an integer for length, and builds and returns an array of strings of the given length
// initialize an empty array as the array to return
// initialize an array of the alphabet-used to create a random word of random
// loop for the length of the array wanted, and loop inside to create a word of random length 1-10
// remember to push the new word into the array to return

function randomArray(length) {
  var toReturn = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  for (var i=0; i<length; i++) {
    wordLength = Math.floor(Math.random()*10+1);
    word = [];
    for (var k=0; k<wordLength; k++) {
      word.push(alphabet[Math.floor(Math.random()*alphabet.length)]);
    }
    toReturn.push(word.join(''));
  }
  return toReturn;
}

// driver code
console.log(longest(['a', 'ab', 'abc', 'd', 'efgh']));
console.log(longest(['apple', 'car', 'abracadabra']));
console.log(objectMatch({'name': 'Steve', fruit: 'orange', done: true}, {name: 'Steven', fruit: 'carrot', 'done': false}));
for (var i=0; i<10; i++) {
  arr = randomArray(Math.floor(Math.random()*10+1));
  console.log("Random array: "+arr)
  console.log("Longest word in this random array: "+longest(arr));
}

