@isTest

class StudentClassTest {
                   
    @isTest
    
    static void TestFunction(){
    
    student__c VarS = New Student__c ();
    VarS.Age__c = 20;
    VarS.experience__c = 12;
    
    insert VarS;
    
    student__c VarS2 = New student__c();
    VarS2= [SELECT Age__c , status__c FROM student__c WHERE (id =: VarS.id AND Status__c='selected')];
     system.assertEquals('Selected',VarS2.Status__c);
    }
    
    @isTest
    
    static void TestFunction2(){
    
    student__c VarS = New Student__c ();
    VarS.Age__c = 22;
    VarS.experience__c = 15;
    insert VarS;
    
        VarS.Age__c = 25 ;
        VarS.experience__c =29;
        update VarS;
        
    student__c VarS2 = New student__c();
    VarS2= [SELECT Age__c , status__c FROM student__c WHERE (id =: VarS.id AND Status__c='selected')];
     system.assertEquals('Selected',VarS2.Status__c);
    }
    @isTest
    
    static void TestFunction3(){
    
    student__c VarS = New Student__c ();
    VarS.Age__c = 34;
    VarS.experience__c = 5;
    insert VarS;
    
        
        
    student__c VarS2 = New student__c();
    VarS2= [SELECT id,Status__c FROM student__c WHERE (id =: VarS.id )];
     system.assertEquals( 'NOT Selected',VarS2.Status__c);
    }
    
    
}