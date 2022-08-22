public with sharing class AccountRepository {
    
    public AccountRepository() {

    }

    public List<Account> saveAll(List<Account> accounts){
        upsert accounts;
        return accounts;
    }


}
