// initializing color and horse name arrays
var colorArray = ["jaded green", "obnoxious orange", "banana green", "listerine green"];
var horseNames = ["Randy", "Tommy", "Ed", "Richard"];

// adding new color and name to respective arrays
colorArray.push("cardinal red");
horseNames.push("Jane");

// loop the length of the the color or horse name array and initialize objects with horse names as keys and colors as values
var horseObjects = {};
for (var i = 0; i < colorArray.length; i++) {
  horseObjects[horseNames[i]] = colorArray[i];
}
console.log(horseObjects);