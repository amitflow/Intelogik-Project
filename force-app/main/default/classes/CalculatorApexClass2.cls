public class CalculatorApexClass2 {

 static integer VarSum;
  static integer VarMulti;
    
   public static integer MakeAdd(integer VarNumA,integer VarNumB){
        VarSum =VarNumA + VarNumB;
        return VarSum;
    }
   public static void MakeMulti(integer VarNumC,integer VarNumD){
        VarMulti=VarNumC * VarNumD;
        system.debug('The Multiplication Answer='+ VarMulti );
    }
}