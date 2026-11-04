global class batchAccountUpdate implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'SELECT Id, Name, Active__c FROM Account';       
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Account> scope) {
        System.debug('Event List'+scope);
        for(Account a : scope) {
            a.Name = a.Name + '******';
        }
        //update scope;
    }
    
    global void finish(Database.BatchableContext BC) {
    }
}