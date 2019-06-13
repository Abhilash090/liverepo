public class NewCaseListController {

    public List<Case> getNewCases() {
        
        List<case> cases = [select id, casenumber from case where status='new'];
        return cases;
            }
}