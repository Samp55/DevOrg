@isTest
public class AccountProcessorTest {

    @isTest public static void Testfuture(){
        List<Id> acclst=new  List<Id>();
        
        Account acc=new account();
        acc.name='Test';
        insert acc;
        
        Contact cont = New Contact();
        cont.FirstName ='Sam';
        cont.LastName ='Pagar';
        cont.AccountId = acc.Id;
        Insert cont;
        
        acclst.add(acc.id);
   
        Test.startTest();
        AccountProcessor.countContacts(acclst);
        Test.stopTest();
        
        Account accCount = [select Number_of_Contacts__c from Account where id = :acclst LIMIT 1];
        System.assertEquals ( Integer.valueOf(ACC.Number_of_Contacts__c) ,1);
    }
}