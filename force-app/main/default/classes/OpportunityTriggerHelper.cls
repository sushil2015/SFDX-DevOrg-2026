public class OpportunityTriggerHelper {
    
    public static void updateOppNameOnAccount(List<Opportunity> oppList){
        
        List<ID> accountIds = new List<ID>();
        List<Account> accounts = new List<Account>();
        for (Opportunity opps : oppList) {
            
        	accountIds.add(opps.AccountId);
        }
        
        for(Account accs : [SELECT Id, (SELECT Id, name from Opportunities) FROM Account WHERE Id IN : accountIds]){
            accs.Total_Opps__c = accs.Opportunities.size();
            
            List<String> oppName = new List<String>();
              for(Opportunity oppty:accs.Opportunities)
              {
                  oppName.add(oppty.name);
              }
              accs.Opps_Name__c = String.join(oppName,'; ');
            
            accounts.add(accs);
        }
        update accounts;
    }

}