public with sharing class ContactTriggerClass {

    public static void validarContact(List<Contact> contacts){
        for(Contact ctt : contacts){
            If(ctt.Email == null){
                ctt.addError('Por favor insira um email para o contato!');
            }
        }
    }


}
