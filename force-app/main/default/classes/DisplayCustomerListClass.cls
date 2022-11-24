public class DisplayCustomerListClass {
@AuraEnabled
    public static List<Account>getAccountRecord()
    {
       List<Account>AccList=New List<Account>();
        AccList=[Select id,Name,Phone,Type From Account Where Type!=null LIMIT 100];
        return AccList;
    }
    
    
}