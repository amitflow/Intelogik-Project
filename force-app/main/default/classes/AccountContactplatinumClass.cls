public class AccountContactplatinumClass {

    public static void function1(List<contact> MyList){
        set<string> VarMyset = New set<string>();
        for(contact VarC :MyList){
            if(VarC.AccountId != NULL && VarC.Contact_Type__c=='Platinum'){
                VarMyset.add(VarC.AccountId);
            }
        }
        if(VarMyset.size() > 0){
            list<Account> VarAccList = New  list<Account> ();
            for(Account VarA : [SELECT ID,Platinum_Contact_status__c FROM Account WHERE ID IN:VarMyset]){
                VarA.Platinum_Contact_status__c='Platinum contact Has been Updated';
                VarAccList.add(VarA);
            }
            if(VarAccList.size()> 0){
                Update VarAccList;
                }
        }
        
    }
    
    
}