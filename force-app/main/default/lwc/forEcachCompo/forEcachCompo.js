import { LightningElement } from 'lwc';

export default class ForEcachCompo extends LightningElement {

    CEOlist;

    ShowListHandler(){


        this.CEOlist=[
            {
                id:1,
                name:'Mark',
                title:'CEO Of Salesforcce',
           },
            {
            id:2,
            name:'Alien',
            title:'CEO Of Tesla',
             },
        
           {
               id:3,
               name:'Jesof',
               title:'CEO Of Amezon',
         },
  
         {
            id:4,
            name:'Ratanji',
            title:'CEO Of TATA',
         },
         
                     ]
    
    
                    }



}