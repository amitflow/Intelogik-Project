@isTest
class ElectronicClassTest{
    
    @isTest
    static void Testfunction1(){
        
        Electonics_Device__c VarE = New Electonics_Device__c ();
        VarE.Name ='Amie';
        VarE.Type__c='TV';
        VarE.PRICE__C=2000;
        
        insert varE;
        Electonics_Device__c VarE2= New Electonics_Device__c ();
        VarE2 =[SELECT PRICE__C FROM Electonics_Device__c WHERE ID=:VarE.id];
        
        system.assertEquals(1000,VarE2.price__c);
    }
      @isTest
    static void Testfunction2(){
        
        Electonics_Device__c VarE = New Electonics_Device__c ();
        VarE.Name ='Amie';
        VarE.Type__c='LED';
        VarE.PRICE__C=1000;
        
        insert varE;
        Electonics_Device__c VarE2= New Electonics_Device__c ();
        VarE2 =[SELECT PRICE__C FROM Electonics_Device__c WHERE ID=:VarE.id];
        
        system.assertEquals( 800,VarE2.price__c);
    }
      
    @isTest
    static void Testfunction3(){
        
        Electonics_Device__c VarE = New Electonics_Device__c ();
        VarE.Name ='Amie';
        VarE.Type__c='LCD';
        VarE.PRICE__C=500;
        
        insert varE;
        Electonics_Device__c VarE2= New Electonics_Device__c ();
        VarE2 =[SELECT PRICE__C FROM Electonics_Device__c WHERE ID=:VarE.id];
        
        system.assertEquals(350,VarE2.price__c);
    }
      
}