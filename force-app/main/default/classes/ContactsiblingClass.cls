public class ContactsiblingClass {
    public static void Contactsibling(List<contact> triggernew){
        set<id> AccountIds = new set<id>();
        for (contact c : triggernew)
        {
            if(c.AccountId !=null)
            {
                AccountIds.add(c.AccountId);
            }
        }
        
        list<account> GetAccounts = [SELECT id,name, (SELECT id FROM contacts) FROM account WHERE id in : AccountIds];
        map<id,integer> AccountContactMap= new map<id,integer>();
        
        for(account acc :GetAccounts){
            integer count;
            if(acc.contacts.size() > 0){
                count = acc.contacts.size()-1;
            }
            else if (acc.contacts.size() == 0){
                count=0;
            }
            AccountContactMap.put(acc.id,count);
        }
        
    list<contact> GetContacts = [SELECT id, SiblingCount__c,AccountId FROM contact WHERE AccountId in : AccountContactMap.keyset()] ;       
        list<contact> TpUpdate = new list<contact>();
        
        for(contact c : GetContacts){
            c.SiblingCount__c = AccountContactMap.get(c.AccountId);
            TpUpdate.add(c);
        }
        update (TpUpdate);
    }
    
}