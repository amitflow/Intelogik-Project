import { LightningElement } from 'lwc';

export default class TaskTimeCounter extends LightningElement {

    showStartbtn = true;

    timeVal = '0 : 0 : 0 : 0';
   
    timeIntervalInstance;
    
    totalMilliseconds=0;

    startHandler(event){
                this.showStartbtn = false;
                var parentThis = this
                
                this.timeIntervalInstance = setInterval(function() {

    
    var hours = Math.floor((parentThis.totalMilliseconds % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((parentThis.totalMilliseconds % (1000 * 60 * 60 )) / (1000 * 60));
    var seconds = Math.floor((parentThis.totalMilliseconds % (1000 * 60)) / 1000);
    var milliseconds = Math.floor((parentThis.totalMilliseconds % (1000 )));


    parentThis.timeVal = hours + " : " + minutes + " : " + seconds + " : " + milliseconds;
    parentThis.totalMilliseconds += 100;

}
  , 
100);

}
            stopHandler(event) {
           this.showStartbtn = true;
            clearInterval(this.timeIntervalInstance);

}

resetHandler(event){
    this.showStartbtn = true;
    this.timeVal='0 : 0 : 0 : 0';
    this.totalMilliseconds = 0;
    clearInterval(this.timeIntervalInstance);



}

}