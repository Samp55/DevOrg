trigger createCon on Account (after insert,after update) {
Map<Id,account> accMap=new Map<Id,account>();
List<Contact> conLst=new List<Contact>();
if(trigger.isInsert){
for(Account acc:trigger.new){
Contact con=new Contact();
con.lastname=acc.name;
con.accountid=acc.id;
conLst.add(con);

}
insert conLst;

}

if(trigger.isAfter && trigger.IsUpdate){

    for(Account acc:trigger.new){
        if(acc.industry!=trigger.oldMap.get(acc.id).industry){
        accMap.put(acc.id,acc);
        }
    }

List<Contact> ConUpdateLst=[select id,name,accountid,industry__c from contact where accountid in :accMap.keySet()];

     for(Contact con:ConUpdateLst){
     con.industry__c=accMap.get(con.accountid).Industry;
     conLst.add(con);
     }
     Update conLst;

}
}