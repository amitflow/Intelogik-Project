import { LightningElement,track } from 'lwc';

export default class CustomValidation extends LightningElement {

    validationinfo(){
 
         let searchCmp = this.template.querySelector(".nameCmp");
         let dateCmp =this.template.querySelector(".dateCmp");

        let searchcmpvalue = searchCmp.value;
        let dtcmpvalue = dateCmp.value;

 if (!searchcmpvalue){
    searchCmp.setCustomValidity("Name Value is required");
 }else{
    searchCmp.setCustomValidity("");
 }
 searchCmp.reportValidity();


 if (!dtcmpvalue){
    dateCmp.setCustomValidity("Date Value is required");
 }else{
    dateCmp.setCustomValidity("");
 }
 dateCmp.reportValidity();


 }
 }