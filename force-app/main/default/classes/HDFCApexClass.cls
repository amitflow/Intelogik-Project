public with sharing class HDFCApexClass {

    @AuraEnabled
    public static void createRecord (HDFC__c client){
        try{
            system.debug('HDFCApexClass::createRecord::client'+client);
            if(client != null){
                insert client;
            }
            
        } catch (Exception ex){
            
        }
    }
    
}