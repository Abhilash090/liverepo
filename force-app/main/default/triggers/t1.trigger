trigger t1 on Account (before insert) {

    for(account a : trigger.new){
    
    if(a.Rating=='Warm'){
    a.adderror('Rating shouldnt be Warm');
    }
   
   if(a.Rating=='Cold'){
    a.adderror('Rating shouldnt be cold');
    }
   
   if(a.Industry =='Technology'){
    a.adderror('Industry must be tech');
    }
   
    } 

}