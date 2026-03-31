public with sharing class CaseTriggerHandler {
    public static void handleBeforeInsert(List<Case> newCases){
        
        for (Case c : newCases){
            if (c.Subject != null && c.Subject.containsIgnorecase('urgent')){
                c.Priority = 'High';
            }
            
            if(c.Status == null){
                c.Status = 'New';
            }
        }
    }
}