import { LightningElement ,wire,track} from 'lwc';
import getAccount from '@salesforce/apex/LwcDatatableAccount.getAccount';

export default class AccountLwcDatatable extends LightningElement {
 
@track columns =[
    {label:'Account Name',fieldName:'Name'},
    {label:'Phone',fieldName:'Phone'},
    {label:'Type',fieldName:'Type'},


]
    Error;
    AccountData;

    @wire (getAccount)
    wiredAcccount({ error, data })
    {
        if(data){
this.AccountData=data;
        }else if (error){
this.Error=error;
        }
}
}