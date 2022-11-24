public class Combobox {
@AuraEnabled
    public static List<Account> getAccounts(){

        return [Select Id,Name from Account LIMIT 20];
    }
    @AuraEnabled
     public static List<Contact> getContacts(string selectedAccountId ){

        return [Select Id,Name,Email,AccountId from Contact Where AccountId=: selectedAccountId];
    }
}