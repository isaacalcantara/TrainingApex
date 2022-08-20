trigger Contact on Contact (before insert, after insert) {
    if (Trigger.isInsert){
        if(Trigger.isInsert){
            if(Trigger.isBefore){
                ContactTriggerClass.valityCOntact(Trigger.new);
            }
            if(Trigger.isAfter){
                ContactTriggerClass.sendNotification(Trigger.new);
            }   
        }
    }
}