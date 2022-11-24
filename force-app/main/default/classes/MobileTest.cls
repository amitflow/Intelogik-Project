@isTest
public class MobileTest {

    static Testmethod void Testfunction(){
        
        Mobile__c M = new Mobile__c();
        M.Brand_Name__c='Samsung';
        M.Price__c=300;
        system.debug('Price before inserting records'+  M.Price__c); 
        test.startTest();
        
        insert M;
       Mobile__c M1=[SELECT Price__c FROM Mobile__c WHERE ID =: M.Id];
        system.debug('price after trigger got fired '+ M1.Price__c);
        system.assertEquals(270,M1.Price__c);
    
    Mobile__c M2 = new Mobile__c();
        M2.Brand_Name__c='Apple';
        M2.Price__c=300;
        system.debug('Price before inserting records'+  M2.Price__c); 
      insert M2;
    test.stopTest();
     Mobile__c M3=[SELECT Price__c FROM Mobile__c WHERE ID =: M2.Id];
        system.debug('price after trigger got fired '+ M3.Price__c);
        system.assertEquals(240,M3.Price__c);
    }
    static Testmethod void Testfunction2(){
        
        Mobile__c M4 = new Mobile__c();
        M4.Brand_Name__c='Samsung';
        M4.Price__c=200;
        system.debug('Price before inserting records'+  M4.Price__c); 
        test.startTest();
        insert M4;
        
        M4.Price__c=100;
        update M4;
       Mobile__c M5=[SELECT Price__c FROM Mobile__c WHERE ID =: M4.Id];
        system.debug('price after trigger got fired '+ M5.Price__c);
        system.assertEquals(95,M5.Price__c);
    
    Mobile__c M6 = new Mobile__c();
        M6.Brand_Name__c='Apple';
        M6.Price__c=300;
        system.debug('Price before inserting records'+  M6.Price__c); 
      insert M6;
        
       update M6; 
    test.stopTest();
     Mobile__c M7=[SELECT  Discount_Status__c FROM Mobile__c WHERE ID =: M6.Id];
        system.debug('price after trigger got fired '+ M7.Discount_Status__c);
        system.assertEquals('Sorry , No discount!',M7.Discount_Status__c);
    }
}