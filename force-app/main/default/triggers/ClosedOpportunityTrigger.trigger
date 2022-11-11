trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

List<task> taskLst=new List<Task>();
for(Opportunity opp: [select id,stagename from opportunity where id in:trigger.new and stagename like '%Closed Won%']){
        Task t=new Task();
        t.subject='Follow Up Test Task';
        t.whatid=opp.id;
        taskLst.add(t);
    }
    if(taskLst.size() > 0){
        insert taskLst;
}

}