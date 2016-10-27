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

// constructor function for a Car
function Car(model, mpg, used) {
  this.model = model;
  this.mpg = mpg;
  this.used = used;
  this.radio = function() { console.log("Playing this month's top hits, at DBC radio!"); };
}

var myCar = new Car("Honda", 30, false);
myCar.radio();
myCar.clean = false;
myCar.washCar = function() {
  if (this.clean == false) {
    console.log("Going to the car wash!");
    this.clean = true;
    console.log("My car is sparkly clean!");
  }
  else {
    console.log("My car is sparkly clean!");
  }
};
myCar.washCar();