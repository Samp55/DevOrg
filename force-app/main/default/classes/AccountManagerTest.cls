@isTest 
private class AccountManagerTest{
    @isTest static void testMethod1(){
        Account objAccount = new Account(Name = 'test Account');
        insert objAccount;
        Contact objContact = new Contact(LastName = 'test Contact',
                                         AccountId = objAccount.Id);
        insert objContact;
        Id recordId = objAccount.Id;
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://sf-info-dev-ed.lightning.force.com/services/apexrest/Accounts/'
            + recordId +'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
   
        Account thisAccount = AccountManager.getAccount();
        
        System.assert(thisAccount!= null);
        System.assertEquals('test Account', thisAccount.Name);
    }
}