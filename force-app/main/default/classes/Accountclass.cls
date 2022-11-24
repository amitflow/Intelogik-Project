public class Accountclass{
    public static void CreateContact(list<Account>MyAccList){
        
        list<contact>ListAllRecord = New list<contact>();
       
        for(Account TempAcc:MyAccList){
            if(TempAcc.Numberofemployees > 1000){
                contact c = New contact();
                
                c.FirstName='Admin';
                c.LastName='General';
                c.AccountId=TempAcc.id;
                
                
                ListAllRecord.add(c);
            }
        }
        
        insert ListAllRecord;
    }
    
}