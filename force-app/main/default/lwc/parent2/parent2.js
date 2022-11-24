import { LightningElement } from 'lwc';

export default class Parent2 extends LightningElement {


    handlechildevent(event){

   const varchildnameP=event.detail.anyname;

   const varchilddetailP=event.detail.anydetail;

alert('Event handled in Parent Compo');

alert('Whatever will come come from child compo');

alert('child compo name is:'+varchildnameP);

alert('child compo dscreption is:'+varchilddetailP);
    }










}