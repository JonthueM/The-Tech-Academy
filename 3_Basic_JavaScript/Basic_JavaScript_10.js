alert("Everything id connected!");
//Counting Strings
function stringCount() {
    var string = "Hello World!";
    var count = string.length; //.length displays number of characters
    document.getElementById("countString").innerHTML = count;

}
//For Loop
var Instruments = ["Guitar", "Drums", "Piano", "Bass","Violin","Trumpt","Flute"];
var Content = "";
var Y;
function for_Loop() {
    for (Y = 0; Y < Instruments.length; Y++) {
        Content += Instruments[Y] + "<br>;"
    }
    document.getElementById("List_of_Instruments").innerHTML = Content;
}
//Array
function kinds_of_fruits(){
    var different_fruits = [];
    different_fruits[0] = "Banana";
    different_fruits[1] = "Kiwi";
    different_fruits[2] = "Apple";
    different_fruits[3] = "Mango";
    document.getElementById("Array").innerHTML = "I love " + different_fruits[0] + "s."
}
// Constant
function constant_function() {
    const kind_of_vegetable = {type:"greens", name:"Collards", size:"small"};
    kind_of_vegetable.size = "medium";
    kind_of_vegetable.price = "$3.50";
    document.getElementById("constant").innerHTML = kind_of_vegetable.type + " taste good!";
}

var X = 907;
document.getElementById("before_LET").innerHTML = X;
{
    let X = 777;
    document.getElementById("LET").innerHTML = X;
}
document.getElementById("after_LET").innerHTML = X;

function returnThis(){
    return Date();
    }
document.getElementById("stopAndGo").innerHTML = returnThis();

let phone = {
    make: "S10 ",
    model:"Galaxy ",
    year: "2018 ",
    color:"black ",
    description: function () {
        return "I have a " + this.color + this.year + this.model + this.make;
    }

};
document.getElementById("LET_Object").innerHTML = phone.description();

var text = "";
var i;
for (i = 0; i < 10; i++) {
    if (i === 7) { break; }
    text += "Number " + i + "<br>";
}
document.getElementById("break").innerHTML = text;