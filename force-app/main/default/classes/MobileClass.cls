public class MobileClass {
  
    public static void MobileDiscount(list<Mobile__c> VarMobileList){
        
        for(Mobile__c VarM : VarMobileList ){
            
            if(VarM.Brand_Name__c == 'Samsung'){
                
                VarM.Price__c = VarM.Price__c-(VarM.Price__c * 5)/100;
            }
              else  if(VarM.Brand_Name__c == 'Apple'){
                
                VarM.Price__c = VarM.Price__c-(VarM.Price__c * 15)/100;
            }
        }
    }
}