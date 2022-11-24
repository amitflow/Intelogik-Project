import { LightningElement,api } from 'lwc';

export default class Childcompo extends LightningElement {

@api messagefromparent;
@api projectcode;

}