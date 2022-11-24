import { LightningElement } from 'lwc';

export default class PatientDetailCompo extends LightningElement {

    booleanflagvalue=false;
   
    ShowFormHandler(){
        this.booleanflagvalue=true;
    }



      HideFormHandler(){
    this.booleanflagvalue=false;
}

}