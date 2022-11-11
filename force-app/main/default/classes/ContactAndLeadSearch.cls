public class ContactAndLeadSearch {
    public static List<list<sObject >> searchContactsAndLeads(String name){
        List<list<sObject >> searchList =[Find :name IN ALL FIELDS returning Contact(name),Lead(name)];
        return searchList;
    }
}