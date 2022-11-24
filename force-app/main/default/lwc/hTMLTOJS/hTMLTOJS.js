import { LightningElement } from 'lwc';

export default class HTMLTOJS extends LightningElement {


    letterhandler(event){
        var ValueWeGotFromHTMl = event.target.value;
        alert('You have entered a letter =' + ValueWeGotFromHTMl);
    }


}