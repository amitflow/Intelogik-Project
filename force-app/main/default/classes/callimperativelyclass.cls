public with sharing class callimperativelyclass {
   @AuraEnabled(cacheable=true)
    public static List<Account> getAccount(string keywordfromlwc){
        string ValSearch = '%' + keywordfromlwc +'%';
    return  [SELECT Id, Name,Phone ,Type FROM Account WHERE   (Phone!= null AND Type!= Null) AND Name LIKE: ValSearch  LIMIT 10 ];
   }
}