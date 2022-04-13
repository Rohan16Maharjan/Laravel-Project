// const email=document.getElementById('email')
// const name=document.getElementById('name')
// const address=document.getElementById('address')
// const phone=document.getElementById('phone')


function clearErrors(){

    errors = document.getElementsByClassName('formerror');
    for(let item of errors)
    {
        item.innerHTML = "";
    }


}

function seterror(id,error){
    element=document.getElementById(id);
    element.getElementsByClassName('formerror')[0].innerHTML=error;
}

function validateForm(){
    var returnval=true;
    clearErrors();

    // var email=document.forms['myform']["email"].value;
    // if(email.length>15){
    //     seterror("email","*Too Long");
    //     returnval=false;
    // }

    var fphone = document.forms['myForm']["fphone"].value;
    if (fphone.length != 10){
        seterror("fphone", "*Phone number should be of 10 digits!");
        returnval = false;
    }

    return returnval;

     
}

 