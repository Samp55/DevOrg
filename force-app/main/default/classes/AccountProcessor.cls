public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountid){
        List<Account> acclst=[select id,Number_Of_Contacts__c, (select id,accountid,name from contacts) from account where id in :accountid];
        for(account acc:acclst){
        if(acc!=null && acc.contacts.size() >0){
            acc.Number_Of_Contacts__c=acc.contacts.size();
        }
        }
    }
}