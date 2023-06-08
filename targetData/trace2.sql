db one $zSql 
lappend ::trace $zSql 
# Test that the list of string passed to the trace callback when $sql
  # is executed is equivalent to the list of strings in $expected.
  #
  set ::trace [list]
  execsql $sql
  uplevel do_test $tn [list {set ::trace
uplevel [list do_trace_test ${tn
execsql $item 
CREATE VIRTUAL TABLE x1 USING fts4;
    INSERT INTO x1 VALUES('Cloudy, with a high near 16');
    INSERT INTO x1 VALUES('Wind chill values as low as -13');
  
