import { LightningElement } from 'lwc';


import L1 from '@salesforce/label/c.WelcomeLabel';
import L2 from '@salesforce/label/c.BodyLabel';
import L3 from '@salesforce/label/c.ButtonLabel';



export default class CustomlabelCompo extends LightningElement {

    Labellist={
        L1,
        L2,
        L3
    };

newclientHandler(){
    alert('Entry done!!!');
}



}