public with sharing class Emailmanager{
    public static void sendMail(string Address, string subject, string body){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toaddresses = new String[]{address};
                mail.setToaddresses(toaddresses);
                mail.setSubject(Subject);
                mail.setPlainTextBody(body);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
    }



}