public class AttendenceClass {

    public static void AttendenceCreationFunction(list<Student_Master__c> StudentsList){
        
        List<Attendence_MasterAttendence__c> AttendenceList = New  List<Attendence_MasterAttendence__c> ();
         List<string> MonthsList = New List<string>();
        
         MonthsList.add('Jan');
         MonthsList.add('Feb');
         MonthsList.add('March');
         MonthsList.add('April');
         MonthsList.add('May');
         MonthsList.add('June');
         MonthsList.add('july');
         MonthsList.add('August');
         MonthsList.add('Sept');
         MonthsList.add('Oct');
         MonthsList.add('Nov');
         MonthsList.add('Dec');
        
        for(Student_Master__c s : StudentsList){
            
            for(integer i=0; i < 12; i = i+1 ){
               Attendence_MasterAttendence__c a = New Attendence_MasterAttendence__c();
               a.Month__c=MonthsList.get(i);
                a.Number_of_Days__c=0;
                a.Student_Name__c=s.id;
                AttendenceList.add(a);
            }
        }
        
        insert AttendenceList;
      
    }
   
}