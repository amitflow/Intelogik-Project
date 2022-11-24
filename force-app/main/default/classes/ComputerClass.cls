public class ComputerClass {

    public static void ComputerMethod(list<Computer__c> VarC){
        
        for(Computer__c VarP: VarC){
            
            if(VarP.RAM__c < 1 && VarP.Processor__c< 2 && VarP.HardDisk__c < 50){
                VarP.Capacity__c ='Low Capacity';
            }
            else{
                VarP.Capacity__c = null;
            }
        }
        
    }
    
}