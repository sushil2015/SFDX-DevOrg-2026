trigger OpportunityTrigger on Opportunity (after insert, after update) {
	
    if(Trigger.isAfter){
        if(Trigger.isInsert || Trigger.isUpdate){
        	OpportunityTriggerHelper.updateOppNameOnAccount(Trigger.new);    
        }
    }
    
}