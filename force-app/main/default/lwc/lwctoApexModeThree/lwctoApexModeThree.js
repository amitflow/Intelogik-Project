import { LightningElement, track} from 'lwc';
import anyname from '@salesforce/apex/AccountHelper.getAccountList';
export default class Lwc_To_Apex_Mode_One extends LightningElement {

    @track accounts;
    @track error;
    
        Handleload(){
            anyname()
            .then(result=>{
                this.accounts= result;
            })  
        .catch(error=>{
            this.error=error;
        });
    }
}