public class ElectonicClass {
               
    public static void ElectronicMethod (list<Electonics_Device__c> VarElectronicList){
        
        for(Electonics_Device__c VarE :VarElectronicList ){
            
            if(VarE.Type__c =='TV'){
                VarE.Price__c = VarE.Price__c-(VarE.Price__c* 0.5);
            }
            
                else if (VarE.Type__c =='LED'){
                    VarE.Price__c = VarE.Price__c-(VarE.Price__c* 0.2);
                }
            else if (VarE.Type__c =='LCD'){
                    VarE.Price__c = VarE.Price__c-(VarE.Price__c* 0.3);
                }
        }
    }
}