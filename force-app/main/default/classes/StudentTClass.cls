public class StudentTClass {
    
    
    public static void StudentTMethod(list<studentT__c>  VarStudentTList){
        
        for(studentT__c VarS : VarStudentTList){
            
            if(VarS.Age__c < 30 && VarS.Experience__c > 8 ){
                
                VarS.Status__c ='Selected' ;
            }
            else if(VarS.Age__c > 30 || VarS.Experience__c < 8 ){
                
                VarS.Status__c =' NOT Selected' ;
            }
            else( VarS.Status__c ='Incorrect Data');
        }
    }

}