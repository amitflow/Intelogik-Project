import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'; 

import GUEST_OBJECT from '@salesforce/schema/Guest_Master__c';
import HOTEL_OBJECT from '@salesforce/schema/Hotel_Master__c';


import GUEST_FIRSTNAME from '@salesforce/schema/Guest_Master__c.Guest_First_Name__c';
import GUEST_LASTNAME from '@salesforce/schema/Guest_Master__c.Guest_Last_Name__c';
import GUEST_PHONE from '@salesforce/schema/Guest_Master__c.Phone__c';
import GUEST_EMAIL from '@salesforce/schema/Guest_Master__c.Email__c';


import HOTEL_CITY from '@salesforce/schema/Hotel_Master__c.Hotel_City__c';
import HOTEL_TYPE from '@salesforce/schema/Hotel_Master__c.Hotel__c';


export default class GuestEntryFormComponent extends LightningElement {


              ObjectApiName1 = HOTEL_OBJECT ; 
        
                hotelcity=HOTEL_CITY;
                hoteltype=HOTEL_TYPE;



               ObjectApiName2 = GUEST_OBJECT ;
        
                    firstnameField = GUEST_FIRSTNAME;
                    lastnameField = GUEST_LASTNAME;
                    phoneField = GUEST_PHONE;
                    emailField = GUEST_EMAIL;  
       

       
       

        handleSuccess(event){
            this.Id = event.detail.id;
            const events = new ShowToastEvent({
                title:"Successful",
                message: "Record Created",
                variant: 'success'
            });
    
            this.dispatchEvent(events);
             
        }

      
    }