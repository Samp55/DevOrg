public class ContactSearch {
    public static List<Contact> searchForContacts(String name1,String name2){
        List<contact> con=new List<Contact>();
        con=[select id,lastname,MailingPostalCode from contact where lastname=:name1 and MailingPostalCode=:name2];
        return con;
    }
}