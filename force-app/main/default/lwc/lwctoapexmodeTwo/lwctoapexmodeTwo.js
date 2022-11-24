import { LightningElement, wire ,track} from 'lwc';
import anyname from '@salesforce/apex/AccountHelper.getAccountList';
export default class Lwc_To_Apex_Mode_One extends LightningElement {

    @track accounts;
    @track error;

    @wire(anyname) 
    wirewdAccounts({error,data}){

        if (data){

            this.accounts=data;

        }
       else if (error){
       console.log(error);
            this.error=error;

        }

    }

}