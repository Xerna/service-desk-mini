public with sharing class CaseController {
    
    @AuraEnabled(cacheable = true)
    public static List<Case> getCases(){
        return [SELECT Id, CaseNumber,Subject,Status, Priority, CreatedDate FROM Case
        ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
    public static Case createCase(String subject, String description, String priority){
        Case newCase = new Case(
            Subject = subject,
        Description = description,
        Priority = priority
            );
        insert newCase;
        return newCase;
    }
}