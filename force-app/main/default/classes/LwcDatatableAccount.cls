public with sharing class LwcDatatableAccount {
    @AuraEnabled (cacheable=true)
    public static List<Account>  getAccount(){
        return [SELECT Id, Name, Phone,Type FROM Account Where (Phone != Null AND Type != Null ) Limit 10 ];
    }
}