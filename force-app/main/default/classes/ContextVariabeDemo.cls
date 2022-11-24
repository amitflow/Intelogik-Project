public class ContextVariabeDemo {
 
    public static void functionA(){
    //code to send SMS
    //call this code when record is about to get inserted
    system.debug('The functionA get called!');
        
    }
     public static void functionB(){
    //code to fetch dat from datbase
    //call this code when record is about to get Updated
    system.debug('The functionB get called!');
         
    }
     
    public static void functionC(){
    //code for calculation of some complex discount
    //call this code when record is alredy get inserted
    system.debug('The functionC get called!');
         
    }
     
    public static void functionD(){
    //code for integration with SAP
    //call this code when record is already get updated
    system.debug('The functionD get called!');
    }
    
}