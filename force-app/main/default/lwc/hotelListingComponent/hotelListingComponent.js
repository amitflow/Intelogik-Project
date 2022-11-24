import { LightningElement, track } from 'lwc';
    import serachAccs from '@salesforce/apex/searchho.retriveAccs';
    import HOTEL_OBJECT from '@salesforce/schema/Hotel_Master__c';
import HOTEL_CITY from '@salesforce/schema/Hotel_Master__c.Hotel_City__c';
import HOTEL_TYPE from '@salesforce/schema/Hotel_Master__c.Hotel__c';

    // datatable columns
    const columns = [
        {
            label: 'Hotel Code',
            fieldName: 'Name',
            type: 'text',
            
        },
        {
            label: 'Hotel City',
            fieldName: 'Hotel_City__c',
            type: 'text',
            
        }, {
            label: 'Hotel Type',
            fieldName: 'Hotel__c',
            type: 'text',
        }
    ];
    export default class HotelListingComponent  extends LightningElement {
        @track searchData;
        @track columns = columns;
        @track errorMsg = '';
        strSearchAccName = '';
        
        ObjectApiName = HOTEL_OBJECT ; 
        
        hotelcity=HOTEL_CITY;
        hoteltype=HOTEL_TYPE;

        handleAccountName(event) {
            this.strSearchAccName = event.detail.value;
        }
    
        handleSearch() {
            if(!this.strSearchAccName) {
                this.errorMsg = 'Please enter account name to search.';
                this.searchData = undefined;
                return;
            }
    
            serachAccs({strAccName : this.strSearchAccName})
.then(result => {
this.searchData = result;

})
.catch(error => {
this.searchData = undefined;
window.console.log('error =====> '+JSON.stringify(error));
if(error) {
this.errorMsg = error.body.message;
}
})
        }
    
    }