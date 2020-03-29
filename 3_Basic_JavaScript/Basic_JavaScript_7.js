alert("Everything is connected and code is running!");

function Sub_numbers_1(){
    var X = 1000;
    console.log(X - 500);
}

function Sub_numbers_2 (){
    console.log(X - 300);
}
Sub_numbers_1();
Sub_numbers_2();

function greetingTimeofDay(){
    if (new Date().getHours() < 12){
        document.getElementById("greeting").innerHTML = "Good Morning";
    }

}

function legal_DrinkingAge(){
    age = document.getElementById("age").value;
    if (age >= 21){ Drink = "You are old enough to drink!";
}
    else {
        age = "You are not old enough to drink!";
    }
    document.getElementById("resultsOne").innerHTML = age;
}


function Time_function() {
    var Time = new Date().getHours();
    var Reply;
    if (Time < 12 == Time > 0){
            Reply = "It is morning time!";
    }
    else if ( Time > 12 == Time < 18){
        Reply = "It is the afternoon.";
    }
    else {
        Reply = "It is evening time.";
    }
    document.getElementById("Time_of_day").innerHTML = Reply;
}