public class MobileShopeeClass {
 
    public static void NewCustomerDiscount(List<Mobile__c> MobileList1){
        for(Mobile__c m : MobileList1 ){
            
            if(m.Brand_Name__c=='Samsung'){
                m.Price__c=m.Price__c - (m.Price__c * 10)/100 ;
                m.Discount_Status__c='You have got 10% discount!';
            }
            else if(m.Brand_Name__c=='Apple'){
                m.Price__c=m.Price__c - (m.Price__c * 20)/100 ;
                m.Discount_Status__c='You have got 20% discount!';
            }
        }
    }
    public static void OldCustomerDiscount(List<Mobile__c> MobileList2){
        for(Mobile__c m : MobileList2 ){
            
            if(m.Brand_Name__c=='Samsung'){
                m.Price__c=m.Price__c - (m.Price__c * 5)/100 ;
                m.Discount_Status__c='You have got 5% discount!';
            }
            else if(m.Brand_Name__c=='Apple'){
              
                m.Discount_Status__c='Sorry , No discount!';
            }
        }
    }

     
    
    
}