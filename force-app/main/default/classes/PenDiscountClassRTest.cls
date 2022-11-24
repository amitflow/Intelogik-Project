@isTest

class PenDiscountClassRTest{
   
    @istest 
    static void Testfunction(){
        Parker_Pen__c VarP = New Parker_Pen__c ();
        VarP.Name = 'Amir';
        Varp.Price__c = 250 ;
    
          insert VarP;
          
        Parker_Pen__c VarP2 = New Parker_Pen__c ();
    
    VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE id=:VarP.id];
    system.AssertEquals(230,VarP2.Price__c);
    
    }
    @istest 
    static void Testfunction2(){
        Parker_Pen__c VarP = New Parker_Pen__c ();
        VarP.Name = 'Amir';
        Varp.Price__c = 250 ;
        insert VarP;
        
        VarP.Price__c =200;
        update Varp;
   
        Parker_Pen__c VarP2 = New Parker_Pen__c ();
        VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE id=:VarP.id];
        system.AssertEquals(180,VarP2.Price__c);
    
    }
}