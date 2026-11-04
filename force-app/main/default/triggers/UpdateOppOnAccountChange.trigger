trigger UpdateOppOnAccountChange on Account (after update) {
    Map<Id, Account> changeAccounts = new Map<Id, Account>();
    
    for (Account acc: Trigger.new){
        Account oldAcc = Trigger.Oldmap.get(acc.Id);
        if(acc.Category__c != oldAcc.Category__c){
            changeAccounts.put(acc.Id, acc);
        }
    }
    
    if(!changeAccounts.isEmpty()){
        List<Opportunity> OpptoUpdate = [SELECT Id, AccountID, Category__c from Opportunity where AccountId IN :changeAccounts.keySet()];
        for (Opportunity opps:OpptoUpdate){
            Account relatedAcc = changeAccounts.get(opps.AccountId);
            opps.category__c = relatedAcc.Category__c;
        }
        
        if(!OpptoUpdate.isEmpty()){
            update OpptoUpdate;
        }
        
    }

}