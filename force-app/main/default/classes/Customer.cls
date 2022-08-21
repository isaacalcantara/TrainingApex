public with sharing class Customer {

    Account account;


    public Customer() {
        account = new Account();
    }

    public Customer(String name){
        account = new Account(Name = name);
    }

    public void save(){
        upsert account;
    }

}
