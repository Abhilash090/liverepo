/*******************************************************//**
@trigger    Assignment1
@purpose    When account is being created, contact should create automatically with phone number as in account. 
@author     Abhilash
@date       4/30/2019 11:04 AM
***********************************************************/
trigger Assignment1 on Account (after insert){

if(Trigger.isInsert){

    List<Contact> ct = new List <Contact>();

    for(Account acc : trigger.new){

        Contact c = new Contact(Lastname = acc.name, AccountId=acc.id, Phone=acc.Phone);

        ct.add(c);
    }
    insert ct; 
}

}