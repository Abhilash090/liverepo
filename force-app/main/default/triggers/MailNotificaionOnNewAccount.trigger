trigger MailNotificaionOnNewAccount on Account (before insert, before delete) {
    if(Trigger.isInsert){
        EmailManager.sendMail('babhilash090@gmail.com','New Account','New Account is created');
    }
    else if(Trigger.isDelete){
        for(Account a :Trigger.old){
            a.addError('Cant delete any account once created');
        }
    }
        
    }