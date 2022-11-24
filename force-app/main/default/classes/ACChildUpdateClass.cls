public class ACChildUpdateClass {

    public static void ACChildUpdateFunction(List<Account> ListOfAccctTriggerNew , Map<Id,Account> mapNew){
    
        Map<Id,Account> mapAccount = new Map<Id,Account> ();
        
        List<Contact> ListContact = new  List<Contact>();
        
    for(Account acct : ListOfAccctTriggerNew){
        if(acct.Phone != mapNew.get(acct.Id).Phone ||
          acct.Fax !=mapNew.get(acct.Id).Fax)
           mapAccount.put(acct.Id,acct);
    }
    if(mapAccount.size()>0){
        ListContact=[SELECT Phone,Fax,AccountId FROM Contact WHERE AccountId In :mapAccount.keyset()];
       
        if(ListContact.size()>0){
            for( Contact con :ListContact){
                con.Phone=mapAccount.get(con.AccountId).Phone;
                con.Fax=mapAccount.get(con.AccountId).Fax;
            }
            update ListContact;
        }
    }
}
}