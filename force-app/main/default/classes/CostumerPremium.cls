public with sharing class CostumerPremium {

     String name;
     Phone phone;
     BillingAddress address;

     public CostumerPremium(){
        System.debug('costumer created');
        name = '';
        phone = new Phone();
        address = new BillingAddress();
     }

}
