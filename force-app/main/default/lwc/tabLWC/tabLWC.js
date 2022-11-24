import { LightningElement } from 'lwc';

export default class TabLWC extends LightningElement {


    VarTabOneBool;

    VarTabTwoBool;

    handleclick(event){

  let buttonclicked = event.target.label;

switch(buttonclicked){

     case 'Show Cashless Info':
       this.VarTabOneBool=true;
    break;

     case 'Show Reimbersement Info':
                  this.VarTabTwoBool=true;
        break;
        case 'Hide Cashless Info':
       this.VarTabOneBool=false;
       break;

     case 'Hide Reimbersement Info':
          this.VarTabTwoBool=false;
         break;

}


    }


}