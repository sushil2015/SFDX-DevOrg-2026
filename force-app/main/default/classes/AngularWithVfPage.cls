public with sharing class AngularWithVfPage {

    public static String getContacts() {
        return JSON.serialize([SELECT id, name, email FROM Contact ]);
    }
}