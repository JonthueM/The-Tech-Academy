function validate() {
    if( document.myForm.tel.value == "" || isNaN( document.myForm.tel.value ) ||
            document.myForm.tel.value.length != 7 ) {
            
            alert( "Please provide a 7 digit phone number." );
            document.myForm.tel.focus() ;
            return false;
         }
}