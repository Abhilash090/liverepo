trigger test on Lead (after insert, after update) {

List<Lead> timesopen = [select Id, (select id, timesopened from emailstatuses)from Lead];

System.debug(timesopen);

}