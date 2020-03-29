
document.getElementById("typeof").innerHTML = typeof "Jonthue";

function testOne(){
        document.getElementById("nAn").innerHTML = 0/0;
    }

function testTwo(){
        document.getElementById("positiveInfinity").innerHTML = isNaN('This is not a string');

}

function testThree(){
    document.getElementById("negativeInfinity").innerHTML = isNaN('777');
}

function infinityPostNumber(){
    document.getElementById("postInfinity").innerHTML = 10E6;
}

function infinityNegNumber(){
    document.getElementById("negInfinity").innerHTML = -10E6;
}

function infinityCurios(){
    document.getElementById("curiosInfinity").innerHTML = 2E310;

    
    }

    function greaterThan7() {
     document.getElementById("answerOne").innerHTML = 7 > 5;   
    }

    console.log(7+8);
    console.log(700>1000);

    function showTrue1() {
        document.getElementById("showingTrue").innerHTML = 25 == 20 +5;
    }

    function showFalse1() {
        document.getElementById("showingFalse").innerHTML =  100 == 1000;
    }

    A = 7;
    B = 7;
    C = "8";
    D = "7";
    E = 6;

console.log(A === B);
console.log(A === C);
console.log(A === D);
console.log(A == E );

document.getElementById("ANDop").value = 5 < 2 && 11 < 9;

document.getElementById("ORop").value = 7 > 10 || 10 >5;

function returnFalse(){
    document.getElementById("returnFalseValue").value = !10>20;
}

function returnTrue(){
    document.getElementById("returnTrueValue").innerHTML = !(4>10);
}