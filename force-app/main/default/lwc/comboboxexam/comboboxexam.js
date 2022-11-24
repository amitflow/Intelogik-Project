import { LightningElement ,track} from 'lwc';
import getAccounts from '@salesforce/apex/Combobox.getAccounts';
import getContacts from '@salesforce/apex/Combobox.getContacts';
const columns = [
    { label : 'Contacts Name' , fieldName : 'Name'},  //fieldname is defined in object manager 
    { label : 'Contacts Email' , fieldName : 'Email'},

]
export default class Comboboxexam extends LightningElement {
    value = '';
    @track accOptions = [];
    @track cardVisible = false;
    @track data = []; //used for storing contact details in data-table
    @track columns = columns;
    get optionscombo() {
         return this.accOptions;
     }
 
     connectedCallback(){
        getAccounts()
         .then(result =>{
            console.log('Here is 2nd>>>>>'+JSON.stringify(result));
             let arr = [];
             for(var i=0; i<result.length ; i++){
                 arr.push({label : result[i].Name, value : result[i].Id});
             }
             this.accOptions = arr;
         })
         
     }
 
     handleonchange(event){
        this.cardVisible = true;
         this.value = event.detail.value;
        
         getContacts({ selectedAccountId : this.value})  
       .then( result =>{
        console.log('Here is 2nd>>>>>'+JSON.stringify(result));
           this.data = result;
       })
       .catch( error =>{
           window.alert("error:"+error) 
       })
   }
}
     