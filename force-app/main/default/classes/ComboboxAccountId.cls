public class ComboboxAccountId {
 @AuraEnabled
    public static List<Account> getAccounts(){

        return [Select Id,Name from Account LIMIT 10];
    }
}