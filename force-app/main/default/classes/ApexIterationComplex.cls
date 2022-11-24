public class ApexIterationComplex {
    
        @AuraEnabled
        Public static Map<string,List<string>>getMap(){
            Map<string,List<string>> MapOfData = new Map<string,List<string>>();
            
            List<string> Mobiles = new List<string>{'samsung','Apple','LG','Nokia'};
                
                List<string> Cars= new List<string>{'BMW','MBenz','Toyota','Audi'};
                 MapOfData.put('Mobiles',Mobiles);
             MapOfData.put('Cars',Cars);
            system.debug('The current Map='+MapOfData);
            return MapOfData;
        }
    
}