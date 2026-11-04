public class testAccController{

    //public decimal netPrice = 0;
    
    //public double netPrice {get;set;}
    
    //public Map<String,double> Order_TotalsMap {get; set;} 
    
    //public double netPrice;

    /*public testAccController(){
        Order_TotalsMap = new Map<String,double>();
        double netPrice = 0;
        Account acc = [SELECT ID, Notes__c, NetPrice__c, createdById FROM Account WHERE Id = '0012w00000HEVDI'];
        System.debug('netPrice1 ----'+netPrice );
        System.debug('netPrice2 ----'+acc);
        //netPrice = acc.NetPrice__c;
        if(acc.NetPrice__c == null){
            System.debug('netPrice3 ----'+acc);
            netPrice = netPrice ;
        }else{
        System.debug('netPrice4 ----'+acc);
            netPrice = netPrice+acc.NetPrice__c ;
        }
        System.debug('netPrice33333 ----'+netPrice );
        Order_TotalsMap.put('netPrice', netPrice );
        System.debug('netPrice5 ----'+Order_TotalsMap);
        System.debug('netPrice6 ----'+netPrice );
    }*/

    
    /*public transient Component.Apex.OutputText gadgetHTMLContentRec;
    
    public testAccController(){
        Account acc = [SELECT ID, Notes__c,createdById FROM Account WHERE Id = '0012w00000HEVDI'];
        
        gadgetHTMLContentRec = new Component.Apex.OutputText(escape = false);
        gadgetHTMLContentRec.value = acc.Notes__c; 
    
    }
    
    public Component.Apex.OutputText getGadgetHTMLContent3(){           
           return gadgetHTMLContentRec;
     }*/
     
     /*public string notesContent{get;set;}
     
     public testAccController(){
        Account acc = [SELECT ID, Notes__c,createdById FROM Account WHERE Id = '0012w00000HEVDI'];
        notesContent = acc.Notes__c;
        getNotesHTMLContent();
    
    }
    
     public Component.Apex.OutputText getGadgetHTMLContent2(){
       Component.Apex.OutputText outputText = new Component.Apex.OutputText(escape = false);
       outputText.value = notesContent; 
       return outputText;
    }
    
    public Component.Apex.OutputText getNotesHTMLContent(){
       Component.Apex.OutputText outputText = new Component.Apex.OutputText(escape = false);
       outputText.value = notesContent; 
       return outputText;
    }*/


    public string notes{get;set;}

    public testAccController(){
        Account acc = [SELECT ID, Notes__c, Info__c, createdById, CreatedDate FROM Account WHERE Id = '0012w00000HEVDI'];
        notes = acc.Info__c;
    }
    
    public static void customSetting(){
    
    Mappings__c custID= Mappings__c.getInstance('Test123');
        system.debug('AccID---'+custID); 
    
    }

}