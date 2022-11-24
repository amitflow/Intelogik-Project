public class CalculateApexClass {

    
    //Variable Declaration at class Level
    static integer VarSum;
    static integer VarMultiplication;
    
    // function for  Addition
    public static integer MakeAddition(integer VarNumA, integer VarNumB){
        Varsum =  VarNumA + VarNumB ;
        return VarSum;
    }
    
    //function for Multiplication
    public static void MakeMultiply(integer VarNumC , integer  VarNumD){
        
        VarMultiplication = VarNumC * VarNumD;
        system.debug('The Answer =' + VarMultiplication );
    }
}