import { LightningElement } from 'lwc';
import signintemplate from './signintemplate.html';
import signuptemplate from './signuptemplate.html';
import multipletemprenderdemolate from './multipletemprenderdemo.html';


export default class Multipletemprenderdemo extends LightningElement {

selected=null;


mainhander(event){
    this.selected=event.target.label;
}
render(){
    return this.selected === 'Sign In' ? signintemplate:
    this.selected === 'Sign Up' ? signuptemplate:
    multipletemprenderdemolate;
}
shaowSignInHandler(event){
    if(event.target.label==='Enter as Sign In'){
        alert('sign in ho gaya hai');
    }else if(event.target.label==='Enter as Sign Up'){
        alert('Naya hai wahh');
    }
}


}