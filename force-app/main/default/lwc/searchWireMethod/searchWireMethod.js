import { LightningElement ,wire} from 'lwc';
import getAccountList from '@salesforce/apex/callimperativelyclass.getAccount';
const columns = [

    {label : 'Account Name', fieldName : 'Name'},
    {label : 'Phone', fieldName : 'Phone'},
    {label : 'Type', fieldName : 'Type'},
   
];
export default class SearchWireMethod extends LightningElement {

    columns = columns;
    Searchvalue='';
    accList;
    error;
    handleinputwire(event){
       this.Searchvalue= event.target.value;
    }
    
    @wire(getAccountList,{keywordfromlwc : '$Searchvalue'}) 
    WiredAccount({error,data}){
        if(data){
   this. accList=data;
        }
        else {
            this.error=error;
        }
    }
}