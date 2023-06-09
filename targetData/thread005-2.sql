
 ATTACH 'test2.db' AS aux 

    CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b UNIQUE);
    INSERT INTO t1 VALUES(1, 1);
    INSERT INTO t1 VALUES(2, 2);
  
zSql {db {

}

    if {$db eq ""
SQLITE_ROW

        for {set i 0
incr i

          lappend lRes [sqlite3_column_text $STMT 0]
        
 ATTACH 'test2.db' AS aux 


 ATTACH 'test2.db' AS aux 
 SELECT count(*) FROM t1 WHERE b IS NULL 
