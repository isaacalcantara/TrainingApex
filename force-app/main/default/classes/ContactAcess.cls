@RestResource(UrlMapping='/Cases/*')
global with sharing class ContactAcess {

    @HttpGet 
    global static Case getCaseById(){
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case result = [SELECT Id, CaseNumber, Subject  FROM Case WHERE Id = :caseId];
        return result;
    }


}
