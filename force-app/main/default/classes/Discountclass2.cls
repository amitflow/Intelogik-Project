public class Discountclass2 {
    public static void DiscountMethod (list<Parker_Pen__c> VarPenList){
        for(Parker_Pen__c VarP : VarPenList){
            if(VarP.Price__c >=100){
                VarP.Price__c = VarP.Price__c - 20 ;
            }
        }

    }
}