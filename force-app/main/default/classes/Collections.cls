public class Collections {
    
    public Collections(){
        
        List<Account> a = [Select id, name,industry from Account where Industry='Energy'];
        System.debug('List of accounts' +a);
    }

}