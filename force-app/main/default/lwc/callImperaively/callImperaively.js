import { LightningElement,track } from 'lwc';
import getAccount from '@salesforce/apex/callimperativelyclass.getAccount';
export default class CallImperaively extends LightningElement {


    @track columns =[
        {label:'Account Name',fieldName:'Name'},
        {label:'Phone',fieldName:'Phone'},
        {label:'Type',fieldName:'Type'},
    ];


    @track accountList;
    @track error;
    handleCallImperative(){
          getAccount()
            .then(result=>{
         this.accountList=result;
            })
    
            .catch(error=>{
                this.error=error;
            })
        
       
    }


}