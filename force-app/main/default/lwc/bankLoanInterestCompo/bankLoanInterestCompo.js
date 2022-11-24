import { LightningElement } from 'lwc';

export default class BankLoanInterestCompo extends LightningElement {

    loanResut;
    principal;
    noofyears;
    rateofinterest;

    principalchangehandler(event){
this.principal=parseInt(event.target.value);
    }

durationchangehandler(event){
    this.noofyears=parseInt(event.target.value);
}
ratechangehandler(event){
    this.rateofinterest=parseInt(event.target.value);
}
calculateloanamontHandler(){
    this.loanResut='The Loan Interest =' + (this.principal*this.noofyears *this.rateofinterest)/100;
}

}