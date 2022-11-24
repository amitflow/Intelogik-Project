@isTest

class PenClassTest{
   
    @isTest
    static void Testfunction1(){
        
     //Create a record for Testing
        Parker_Pen__c VarP=New Parker_Pen__c();
        VarP.name='Amit';
        VarP.Price__c=200;
        
      //inserting Reord
        insert VarP;
        
        //Create a new box varP2 And fetch A new value Of Record just entered like Query
        Parker_Pen__c VarP2=New Parker_Pen__c();
        VarP2=[Select Price__c From  Parker_Pen__c WHERE Id =:VarP.Id];
        
        //compare new value with expected value
        system.assertEquals(180,VarP2.Price__c);
        
    }
    
     @isTest
    static void Testfunction2(){
        
     //Create a record for Testing
        Parker_Pen__c VarP=New Parker_Pen__c();
        VarP.name='Amit';
        VarP.Price__c=80;
        
      //inserting Reord
        insert VarP;
        
        //Create a new box varP2 And fetch A new value Of Record just entered like Query
        Parker_Pen__c VarP2=New Parker_Pen__c();
        VarP2=[Select Price__c From  Parker_Pen__c WHERE Id =:VarP.Id];
        
        //compare new value with expected value
        system.assertEquals(70,VarP2.Price__c);
        
    }
     @isTest
    static void Testfunction3(){
        
     //Create a record for Testing
        Parker_Pen__c VarP=New Parker_Pen__c();
        VarP.name='Amit';
        VarP.Price__c=60;
        
      //inserting Reord
        insert VarP;
        
        //Create a new box varP2 And fetch A new value Of Record just entered like Query
        Parker_Pen__c VarP2=New Parker_Pen__c();
        VarP2=[Select Price__c From  Parker_Pen__c WHERE Id =:VarP.Id];
        
        //compare new value with expected value
        system.assertEquals(55,VarP2.Price__c);
        
    }
     @isTest
    static void Testfunction4(){
        
     //Create a record for Testing
        Parker_Pen__c VarP=New Parker_Pen__c();
        VarP.name='Amit';
        VarP.Price__c=30;
        
      //inserting Reord
        insert VarP;
        
        //Create a new box varP2 And fetch A new value Of Record just entered like Query
        Parker_Pen__c VarP2=New Parker_Pen__c();
        VarP2=[Select Price__c From  Parker_Pen__c WHERE Id =:VarP.Id];
        
        //compare new value with expected value
        system.assertEquals(29,VarP2.Price__c);
        
    }
     @isTest
    static void Testfunction5(){
        
     //Create a record for Testing
        Parker_Pen__c VarP=New Parker_Pen__c();
        VarP.name='Amit';
        VarP.Price__c=30;
        
      //inserting Reord
        insert VarP;
        
        VarP.Price__c=99;
        Update VarP;
        
        
        //Create a new box varP2 And fetch A new value Of Record just entered like Query
        Parker_Pen__c VarP2=New Parker_Pen__c();
        VarP2=[Select Price__c From  Parker_Pen__c WHERE Id =:VarP.Id];
        
        //compare new value with expected value
        system.assertEquals(89,VarP2.Price__c);
        
    }
}