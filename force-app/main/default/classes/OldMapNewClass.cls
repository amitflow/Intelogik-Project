public class OldMapNewClass {
    public static void OldMapNewFunction(List<Monster_com_JobForm__c> VarList , Map<id,Monster_com_JobForm__c> VarMap){
        
        for(Monster_com_JobForm__c VarCurrent : VarList){
            
           Monster_com_JobForm__c VarOld = VarMap.get(VarCurrent.id);
            if(VarCurrent.Candidate_Email__c!=VarOld.Candidate_Email__c){
                VarCurrent.Candidate_Email__c.adderror('You are not allowed');
            }
        }
       
    }
}