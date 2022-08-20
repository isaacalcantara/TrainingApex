trigger Contact on Contact (before insert, after insert) {
    if (Trigger.isInsert){
        if(Trigger.isInsert){
            if(Trigger.isBefore){
                ContactTriggerClass.validarContact(Trigger.new);
            }
            if(Trigger.isAfter){
                
            }   
        }
    }
}