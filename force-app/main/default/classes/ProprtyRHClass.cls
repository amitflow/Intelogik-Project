public class ProprtyRHClass {
    public static void applyDiscount(List<Property__c> VarPropertyListView){
        for(Property__c VarP:VarPropertyListView){
            if(VarP.Type__c =='Row House'){
                VarP.Price__c=VarP.Price__c-(VarP.Price__c*0.05);
            }
        }
    }
}