@isTest

 class MobileClassTest {
     
     @isTest       
     static void Testfunction1(){
         
         Mobile__c VarM = New Mobile__c ();
         VarM.Brand_Name__c='Samsung';
         VarM.Price__c=1000;
         insert VarM;
         
         Mobile__c VarM2 = New Mobile__c ();
         VarM2=[SELECT Price__c FROM Mobile__c WHERE Brand_Name__c = 'Samsung'];
             
             system.assertEquals(950,VarM2.Price__c);
     }
      @isTest       
     static void Testfunction2(){
         
         Mobile__c VarM = New Mobile__c ();
         VarM.Brand_Name__c='Apple';
         VarM.Price__c=5000;
         insert VarM;
         
         Mobile__c VarM2 = New Mobile__c ();
         VarM2=[SELECT Price__c FROM Mobile__c WHERE Brand_Name__c = 'Apple'];
             
             system.assertEquals(4500,VarM2.Price__c);
     }
     
     @isTest       
     static void Testfunction3(){
         
         Mobile__c VarM = New Mobile__c ();
         VarM.Brand_Name__c='Apple';
         VarM.Price__c=5000;
         insert VarM;
         
         VarM.Price__c =1000;
         Update VarM;
         
         Mobile__c VarM2 = New Mobile__c ();
         VarM2=[SELECT Price__c FROM Mobile__c WHERE Brand_Name__c = 'Apple'];
             
             system.assertEquals(900,VarM2.Price__c);
     }
     
}