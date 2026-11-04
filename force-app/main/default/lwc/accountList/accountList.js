import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';
export default class AccountList extends LightningElement {
    accounts;
    error;

    @wire(getAccounts)
    wiredAccounts({error,data}){
        console.log('here-----');
        if(data){
            console.log('here1-----');
            this.accounts = data;
            this.error = undefined;
        } else if (error){
            console.log('here2-----');
            this.error = error.body.message;
            this.accounts = undefined;
        }
    }
}