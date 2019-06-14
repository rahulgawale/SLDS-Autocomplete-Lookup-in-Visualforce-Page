global with sharing class AutoCompleteController {
    @RemoteAction
    global static User[] getUsers(String userName) {
        userName = '%'+userName+'%';
        return [SELECT Id, Username, Name FROM User WHERE Name LIKE :userName OR Username LIKE :userName ORDER BY Name,UserName];
    }
}