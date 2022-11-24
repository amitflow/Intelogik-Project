public with sharing class DMLHDFC {

 @AuraEnabled
    public static void createRecord (HDFC__c client){
        try{
            system.debug('HDFCApexClass::createRecord::client'+client);
            if(client != null){
                insert client;
            }
            
        } catch (Exception ex){
            system.debug('Err'+ex.getMessage());
        }
    }
     
    @AuraEnabled
    public static void deleteRecord(HDFC__c client){
        try{
            system.debug('HDFCApexClass::createRecord::client'+client);
            if(client != null){
                HDFC__c Record = [SELECT id FROM HDFC__c WHERE Email__c =: client.Email__c];
                
                delete Record;
            }
            
        } catch (Exception ex){
            system.debug('Err'+ex.getMessage());
        }
    }
    
    
    @AuraEnabled
    public static void updateRecord (HDFC__c client){
       
        try{
            
            if(client != null){
                HDFC__c Record = [SELECT id FROM HDFC__c WHERE Email__c=:client.Email__c];
                
                if(client.First_Name__c != null){
                    Record.First_Name__c = client.First_Name__c;
                }
               
                if(client.Last_Name__c!= null){
                    Record.Last_Name__c= client.Last_Name__c;
     
              }
                
                 if(client.Monthly_Salary__c != null){   
                Record.Monthly_Salary__c= client.Monthly_Salary__c;
                 }
          
                update Record;
            }
            
        } catch (Exception ex){
            
            system.debug('Err'+ex.getMessage());
        }
    }
}