uplevel [list do_test $tn [subst -nocommands {
    set stmt [sqlite3_prepare_v2 db {$sql
for {set i 0
lappend res [sqlite3_column_text [set stmt] [set i]]
      
error [sqlite3_errmsg db]
    
CREATE TABLE t1(x, y, z);
  INSERT INTO t1 VALUES('a', 'b', 'c');

3    a b c
0
0
0
0
0
