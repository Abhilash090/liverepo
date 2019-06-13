/*******************************************************
@trigger    Assignment2
@purpose    Creates contact automatically when account gets created and when phone number edited updates phone number in contact.
@author     Abhilash
@date       5/1/2019 10:40 AM
***********************************************************/

Trigger Assignment2 on Account(after update){
    List<Contact> ct = new List <Contact>();
        for(Account acc : trigger.new){
            Contact c = new Contact(Lastname = acc.name, AccountId=acc.id, Phone=acc.Phone);
            ct.add(c);
}
    insert ct; 
}