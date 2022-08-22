@isTest
public with sharing class CustomerTest {

    @isTest
    public static void testeCreateAccount(){
        // given
        // when
        // then

        Customer custumer = new Customer('Isaac');
        custumer.save();
        System.assert(customer.account.Id != null);

    }


}
