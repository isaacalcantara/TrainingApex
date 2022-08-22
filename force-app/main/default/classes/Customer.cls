public with sharing class Customer {

    @TestVisible
    Account account;


    public Customer() {
        account = new Account();
    }

    public Customer(String name){
        account = new Account(Name = name);
    }

}
