import { LightningElement ,track} from 'lwc';
import displayacc from '@salesforce/apex/ComboboxAccountId.getAccounts';
export default class ComboBoxDatatableAccountId extends LightningElement {
    value = '';
    @track accOptions = [];
     get options() {
         return this.accOptions;
     }
 
     connectedCallback(){
         displayacc()
         .then(result =>{
 
             let arr = [];
             for(var i=0; i<result.length ; i++){
                 arr.push({label : result[i].Name, value : result[i].Id});
             }
             this.accOptions = arr;
         })
         
     }
 
     handleonchange(event){
 
         this.value = event.detail.value;
     }
}