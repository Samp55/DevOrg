public class AccountHandler {
    public static Account insertNewAccount(String Name){
        Account acc=new Account();
        acc.name=name;
        try{
            insert acc;
        }catch(exception e){
            return null;
        }
        return acc;
    }

}