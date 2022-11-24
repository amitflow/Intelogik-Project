public class StudentClass {
    
    
    public static void StudentMethod(list<student__c> VarStudentList){
        
        for(student__c VarS : VarStudentList){
            
            if(VarS.Age__c < 30 && VarS.Experience__c > 8 ){
                
                VarS.Status__c ='Selected' ;
            }
            else if(VarS.Age__c > 30 && VarS.Experience__c < 8 ){
                
                VarS.Status__c =' NOT Selected' ;
            }
        }
    }

}