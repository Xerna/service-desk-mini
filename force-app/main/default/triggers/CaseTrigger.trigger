trigger CaseTrigger on SOBJECT (before insert) {
    CaseTriggerHandler.beforeInsert(Trigger.new);
}