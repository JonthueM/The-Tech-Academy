alert("Ok!!!");

//creates an object to keep track of values
const Calculator = {
    // this is displays 0 on the screen
    Display_Value: '0',
    //this will hold the first operand for any expressions, we set to null for now
    First_Operand: null,
    // this check whether or not the second operand has been input
    Wait_Second_Operand: false,
    // this will hold the operatpr, we set it to null for now
    operator: null,
};

// this modifies values each time a button is clicked
function Input_Digit(digit) {
    const { Display_Value, Wait_Second_Operand } = Calculator;
    // we are checking to see if Wait_Second_Operand is true and set
    // Display_Value to the key that was clicked.
    if (Wait_Second_Operand === true) {
        Calculator.Display_Value = digit;
        Calculator.Wait_Second_Operand = false;
        }
        else {
            // this overwites Display_Value of the current value is 0
            //Otherwise it adds on it
            Calculator.Display_Value = Display_Value === '0' ? digit : Display_Value + digit;
        }
}




// this section handles decimal points
function Input_Decmial(dot){
    // this ensures that aciidental clicking of the demical point
    // doesn't cause bug in your operation
    if (Calculator.Wait_Second_Operand === true) return;
    if (!Calculator.Display_Value.includes(dot)){
        // we are saying that if the Display_Value does not contain a decimal point
        // we ant to add a decimal point
        Calculator.Display_Value += dot;
    }
}



// this section handles operators
function Handle_Operator(Next_Operator) {
    const {First_Operand, Display_Value, operator} = Calculator
    // when a operator key is pressed, we convert the curent number
    // displayed on the screen to a number and then store the result in 
    // Calculator.First_Operand if it doesn't already exist
    const Value_of_Input = parseFloat(Display_Value);
    //Checks if an operator already exists and exits from the function
    if (operator && Calculator.Wait_Second_Operand){
        Calculator.operator = Next_Operator;
        return;
    }
    if (First_Operand == null) {
        Calculator.First_Operand = Value_of_Input;
    } else if (operator) { //checks if an operator already exists
const Value_Now = First_Operand || 0;
    //if oeprator already exist, property lookup is performed for the operator
    // in the perform calculation object and the function that matches the
    //operator is executed
    const result = Perform_Calculation[operator](Value_Now, Value_of_Input);

    Calculator.Display_Value = String(result);
    Calculator.First_Operand = result;
}
    Calculator.Wait_Second_Operand = true;
    Calculator.operator = Next_Operator;
}

const Perform_Calculation = {
    '/': (First_Operand, Second_Operand) => First_Operand / Second_Operand,

    '*': (First_Operand, Second_Operand) => First_Operand * Second_Operand,

    '+': (First_Operand, Second_Operand) => First_Operand - Second_Operand,

    '=': (First_Operand, Second_Operand) => Second_Operand
};

function Calculator_Rest() {
    Calculator.Display_Value = '0';
    Calculator.First_Operand = null;
    Calculator.Wait_Second_Operand = false;
    Calculator.operator = null;
}
// this function updates the screen with the contents of Display_Value
function Update_Display() {
    const display = document.querySelector('.calculator-screen');
    display.value = Calculator.Display_Value;
}

Update_Display;
// this section monitors button clicls
const keys = document.querySelector('.calculator-keys');
keys.addEventListener('click', (event) => {
    // the target variable is an object that repreents the element
    // that was clicked
    const { target } = event;
    // if the element that was clicked on is not a button, exit the function
    if (!target.matches('button')){
        return;
    }
    if (target.classList.contains('operator')){
        Handle_Operator(target.value);
        Update_Display;
        return;
    } 
    if (target.classList.contains('decimal')) {
        Handle_Operator(target.value);
        Update_Display();
        return;
    }
    if (target.classList.contains('decimal')) {
        Input_Decmial (target.value);
        Update_Display;
        return;
       }
        // ensures that AC clears the numbers from the Calculator
    if (target.classList.contains('all-clear')){
        Calculator_Rest();
        Update_Display;
        return;
    }
    Input_Digit(target.value);
    Update_Display();
})