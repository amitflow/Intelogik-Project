@isTest
public class ComputerTest {

    @isTest
    
    static void Test1(){
        
        Computer__c VarC = New Computer__c();
        VarC.RAM__c = 0.12;
        VarC.Processor__c= 1;
            VarC.HardDisk__c = 45;
        insert VarC ;
         Computer__c VarD = New Computer__c();
        VarD =[SELECT RAM__c ,Processor__c,HardDisk__c ,Capacity__c FROM Computer__c ];
        SYSTEM.ASSERTEQUALS('Low Capacity',VarD.Capacity__c);
    }
    static void Test2(){
        
        Computer__c VarC = New Computer__c();
        VarC.RAM__c = 0.14;
        VarC.Processor__c= 1;
            VarC.HardDisk__c = 40;
        insert VarC ;
        
         VarC.HardDisk__c = 42;
        update VarC;
        
        
         Computer__c VarD = New Computer__c();
        VarD =[SELECT RAM__c ,Processor__c,HardDisk__c ,Capacity__c FROM Computer__c ];
        SYSTEM.ASSERTEQUALS('Low Capacity',VarD.Capacity__c);
    }
    static void Test3(){
        
        Computer__c VarC = New Computer__c();
        VarC.RAM__c = 89;
        VarC.Processor__c= 74;
            VarC.HardDisk__c = 78;
        insert VarC ;
        
       
         Computer__c VarD = New Computer__c();
        VarD =[SELECT RAM__c ,Processor__c,HardDisk__c ,Capacity__c FROM Computer__c ];
        SYSTEM.ASSERTEQUALS(null,VarD.Capacity__c);
    }
    
    
    
}