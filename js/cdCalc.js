$(document).ready(function(){
    /**
       function isDigit(a){
       var intRegex = /^\d+$/;
       var floatRegex = /^((\d+(\.\d *)?)|((\d*\.)?\d+))$/;

       if(a===''){
       return null
       }else if(intRegex.test(a) || floatRegex.test(a)){
       return true;
       }else{
       return false;
       }
       }

       $(".target").change(function(){
       digit = isDigit($(this).val());
       if(digit===null){
       $(this).next().empty();
       }else if(digit){
       $(this).next().empty();
       $(this).next().append(" Check");
       }else{
       $(this).next().empty();
       $(this).next().append(" Must be a number");
       }
       });
    */

    $("#formID").validationEngine();

    /* Calculate compounded interest:
     * a = principal
     * b = interest
     * c = number of times per year to compound
     * d = number of years to compound
     */

    function compInt(a,b,c,d){
        return a * pow((1 + (b/c)),(d*c));
    }

});
