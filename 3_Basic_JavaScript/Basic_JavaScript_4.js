alert("Everything is Working");

function my_Dictionary(){
    var Animal = {
        Species:"Duck",
        Color: "Blue",
        Sound: "Quck!"
    };
    document.getElementById("Dictionary").innerHTML = Animal.Sound;    
}

function identicalKeys() {
    var coins = {
        kind: "kind",
        value: "1 USD",
    }
    document.getElementById("challengeOne").innerHTML = conins.Kind;
}

function my_Dictionary2(){
    var Animal2 = {
        Name:"Wolverine",
        Breed: "Crayola",
        Age: "7"
    };
    delete Animal2.Age;
    document.getElementById("delete").innerHTML = Animal2.Age;
}