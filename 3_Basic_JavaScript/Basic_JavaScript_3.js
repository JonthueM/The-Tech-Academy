alert("This is Working");

function addThisUp() {
    var add = 1000 + 1000;
    document.getElementById("results").innerHTML = "1000 + 1000 =" + add;
    
}

function subThisUp() {
    var sub = 1000 - 500;
    document.getElementById("sum").innerHTML = "1000 - 500 = " + sub;
}

function timesThisUp() {
    var times = 100 * 10;
    document.getElementById("result").innerHTML = "100 X 10 = "+ times;
}

function divThisUp() {
    var div = 1000 / 5;
    document.getElementById("returnValue").innerHTML = "1000 / 5 ="+ div;
}

function moreMath(){
    var math = 100000000 - 1000 * 10 + 15;
    document.getElementById("returnSum").innerHTML ="100000000 - 1000 x 10 + 15 =" + math;
}
 
function moreMoreMath(){
    var remain =  1000 % 200;
    document.getElementById("reSum").innerHTML = "The remainder of 1000 and 200 is" + remain;
}

function moreMoreMoreMath() {
    var x = 20;
    document.getElementById("reSum2").innerHTML = -x;
}

var J = 6;
J++;
document.getElementById("Seven").innerHTML = "The increment from 6 is" 

+ J;


var L = 8;
L--;
document.getElementById("seven").innerHTML = "The decrement from 8 is " + L;

window.alert(Math.random());

document.getElementById("round").innerHTML = "6.6 is rounded to " 
+ Math.round(6.5);