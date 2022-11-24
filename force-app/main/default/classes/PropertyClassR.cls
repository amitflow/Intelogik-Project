public class PropertyClassR {

   public static void PropertyMethodR(list<Property__c> VarProprtyList){
         
       for(Property__c VarP : VarProprtyList){
           
             if(VarP.type__c == 'Row House'){
                
                 VarP.Price__c = VarP.Price__c - ( VarP.Price__c * 0.05 );
                   
                     }
        }   
    }   
}