alert("I'm ConnectedA");

function Ride_Function(){
  var Height, Can_ride;
  Height = document.getElementById("Height").value;
  Can_ride = (Height < 52) ? "You are too short": "You are tall enough";
  document.getElementById("Ride").innerHTML = Can_ride + " to ride."; 
}

function Age_Function(){
    var Age, Can_vote;
    Age = document.getElementById("Age").value;
    Can_vote = (Age < 18) ? "You are too young" : "You are OLD enough";
    document.getElementById("Vote").innerHTML = Can_vote + "to vote.";

}

function Vehicle(Make,Model, Year, Color) {
    this.Vehicle_Make = Make;
    this.Vehicle_Model = Model;
    this.Vehicle_Year = Year;
    this.Vehicle_Color = Color;
}

var Jack = new Vehicle("Dodge","Viper", 2020, "Red");
var Emily = new Vehicle("Jeep", "Trail Hawk", 2019, "White and Black");
var Erik = new Vehicle("Ford", "Pinto", 1971, "Mustard");
function myFunction() {
    document.getElementById("Keywords_and_Constructors").innerHTML = "Erik drives a " + Erik.Vehicle_Color + "-colored " + Erik.Vehicle_Model + " manufactured in " + Erik.Vehicle_Year;
}

function House(Color, Type, Rooms, Lease){
    this.House_Color = Color;
    this.House_Type = Type;
    this.House_Rooms = Rooms;
    this.House_Lease = Lease;
}
var John = new House("Blue","Mansion", 7, "Owner");
var Crazy = new House("Orange","Hut", 2, "Rental");
    function myHouse(){
        document.getElementById("New_and_This").innerHTML = "Jonthue has a " + John.House_Color + ". And His house has " + John.House_Rooms + "Rooms." + "Plus He is not the owner but the " + John.House_Lease + " of the " + John.House_Type;
    }

 function fruit(Kind, Region){
     this.fruit_Kind = Kind;
     this.fruit_Region = Region;
 }   
 var Me = new fruit("Apple", "break");
    document.getElementById("passOrFail").innerHTML = Me.fruit_Region;

    function interestingResponse(){
        var reservedWords = Boolean;
        document.getElementById("passOrFail").innerHTML = reservedWords;
    }

    function Nested_Function(){
        document.getElementById("Nested_Answer").innerHTML = math();
        function math(){
            var add = 900;
            function finalAdd() {add += 700;}
            finalAdd();
            return add;
        }
    }