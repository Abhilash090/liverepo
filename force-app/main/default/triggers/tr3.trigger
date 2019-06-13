trigger tr3 on Opportunity (Before insert) {

    for(opportunity op : trigger.new){
    
        if(op.amount <= 50000){
        
       op.adderror('Opportuity amount should be more then 50000');
    }
    }

}