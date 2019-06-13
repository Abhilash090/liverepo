public class c1{
    
    List<Opportunity> opp =[select Name ,StageName from Opportunity where StageName='closed won'];
    public List<Opportunity> getopp(){
    return opp;
    }

}