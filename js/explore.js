// define a function reverseStr that takes in a string argument/parameter
// define an empty string variable
// get the length of the string argument
// parse through the string argument through reverse indexing and add/store each letter into the empty string variable
// print the reversed string variable to the console

function reverseStr(str) {
  console.log("input string is : "+str);
  var reversed = "";
  for (var i = str.length-1; i >=0 ; i--) {
    reversed += str[i];
  }
  return reversed;
}

var reversed = reverseStr("grandma")
if (1 == 1) {
  console.log(reversed);
}