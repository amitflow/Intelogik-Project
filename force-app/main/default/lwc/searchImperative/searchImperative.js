import { LightningElement } from 'lwc';
import getAccountList from '@salesforce/apex/callimperativelyclass.getAccount';
const columns = [

    {label : 'Account Name', fieldName : 'Name'},
    {label : 'Phone', fieldName : 'Phone'},
    {label : 'Type', fieldName : 'Type'},
   
];
export default class SearchImperative extends LightningElement {
    columns = columns;
    Searchvalue='';
    accList;
    error;
    handleinput(event){
       this.Searchvalue= event.target.value;
    }
    
    handleClickButton(){

        getAccountList({keywordfromlwc : this.Searchvalue} )
        .then(result=>{
     this.accList=result;
    })
    .catch(error=>{
        this.error=error;
    });
   
    }

}