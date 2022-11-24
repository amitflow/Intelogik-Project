public with sharing class AccountHelper {

    @AuraEnabled(cacheable=true)
    public static List<Account>  getAccountList(){
        
        List<Account> VarAccList = New List<Account>();
        VarAccList=[SELECT Id, Name, Industry,Website,Phone FROM Account limit 10];

        return VarAccList;


    }
}