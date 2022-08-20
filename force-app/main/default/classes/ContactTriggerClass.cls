public with sharing class ContactTriggerClass {

    public static void valityContact(List<Contact> contacts){
        for(Contact ctt : contacts){
            If(ctt.Email == null){
                ctt.addError('Por favor insira um email para o contato!');
            }
        }
    }

    public static void sendNotification(List<Contact> contacts){
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toAddresses = new String[] { 'isaacalcz1@gmail.com'};
        message.optOutPolicy = 'FILTER';
        message.subject = 'New Contact Created';
        message.plainTextBody = 'Os seguintes contatos foram criados: ' + contacts.toString();
        Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
    }
    

}
