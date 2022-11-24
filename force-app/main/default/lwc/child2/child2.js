import { LightningElement, api } from 'lwc';

export default class Child2 extends LightningElement {

@api childnameproperty='Intelogik child compo';
@api childdetailproperty='This compo Will give Discount';

    Handlerbuttonclick(){

     const evt= new CustomEvent('mychildevent',{
    detail:
    {
        anyname:this.childnameproperty,
        anydetail:this.childdetailproperty
    }
});
   this.dispatchEvent(evt);

    }


}