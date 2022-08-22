public with sharing class AccountRepository {
    
    public AccountRepository() {

    }

    public List<Account> saveAll(List<Account> accounts){
        upsert accounts;
        return accounts;
    }

    public Account getAccountById(String id){
        Account account = [SELECT Id, Name FROM Account WHERE Id = :id];
        return account;
    }

    public void deleteAccountById(String id){
        account = getAccountById(id);
        delete account;
    }


}
