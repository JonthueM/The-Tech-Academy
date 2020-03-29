alert("Everything is connected and Working!");

function fullSen(){
    var part_1 = "My Name Is";
    var part_2 = " Jonthue Michel"
    var myNameIs = part_1.concat(part_2);
    document.getElementById("sum1revealed").value = myNameIs;


}

function spliceThis(){
    var sentence = "I am Jonthue Michel";
    var spliced = sentence.slice(5,12);
    document.getElementById("aPieces").value = spliced;
}

function generateUppercased(){
     var generate = document.getElementById("requestOne").value;
    var generated = generate.toUpperCase();
    document.getElementById("submit2").value = generated;
     
}

function num2String(){
    var num2Convert = document.getElementById("num").value;
    document.getElementById("valueShown").value = num2Convert.toString();
}


function num2Three(){
    var X = 300900;
    var reduced = X.toPrecision(3)
    document.getElementById("valueShown2").value = reduced;
}

function toFixed(){
    var num = 700.800;
    var x = num.toFixed(0);
    document.getElementById("value2Show").value = x;
}

function valueOf(){
    var str = "Hi World!";
    var res = str.valueOf();
    document.getElementById("value2Show2").innerHTML = res;
}