@isTest

class StudentTClassTest {
                   
    @isTest
    
    static void TestFunction(){
    
    studentT__c VarS = New StudentT__c ();
    VarS.Age__c = 20;
    VarS.experience__c = 12;
    
    insert VarS;
    
    studentT__c VarS2 = New studentT__c();
    VarS2= [SELECT status__c FROM studentT__c WHERE (id =: VarS.id AND Status__c='selected')];
     system.assertEquals('Selected',VarS2.Status__c);
    }
    
    @isTest
    
    static void TestFunction2(){
    
    studentT__c VarS = New StudentT__c ();
    VarS.Age__c = 22;
    VarS.experience__c = 15;
    insert VarS;
    
        VarS.Age__c = 25 ;
        VarS.experience__c =29;
        update VarS;
        
    studentT__c VarS2 = New studentT__c();
    VarS2= [SELECT  status__c FROM studentT__c WHERE (id =: VarS.id AND Status__c='selected')];
     system.assertEquals('Selected',VarS2.Status__c);
    }
    
    @isTest
    
    static void TestFunction3(){
    
    studentT__c VarS = New StudentT__c ();
    VarS.Age__c = 34;
    VarS.experience__c = 5;
    insert VarS;
    
        
        
    studentT__c VarS2 = New studentT__c();
    VarS2= [SELECT id,Status__c FROM studentT__c WHERE (id =: VarS.id )];
     system.assertEquals( 'NOT Selected',VarS2.Status__c);
    }
    
    
}