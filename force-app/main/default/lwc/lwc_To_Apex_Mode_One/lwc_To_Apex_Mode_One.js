import { LightningElement, wire } from 'lwc';
import anyname from '@salesforce/apex/AccountHelper.getAccountList';
export default class Lwc_To_Apex_Mode_One extends LightningElement {

    @wire(anyname) accounts;
}