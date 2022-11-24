public class DuplicateCheckClass {
    public static void DuplicateCheckMethod(List<lead> VarListTrigger){
        set<string> VarPhoneset = new  set<string>();
        set<string> VarEmailset = new  set<string>();
        
        for(lead Varlead :VarListTrigger){
            VarPhoneset.add(Varlead.email);
              VarEmailset.add(Varlead.phone);
        }
        
        List<lead> VarQueryResult = New  List<lead>();
        VarQueryResult=[SELECT id, phone,email FROM lead  WHERE phone IN:VarPhoneset OR email IN: VarEmailset];
        
        for(lead VarLead :VarListTrigger){
            if(VarQueryResult.size()> 0){
                Varlead.addError('U have entered duplicate data . Please Check Properly');
            }
        }
    }
}