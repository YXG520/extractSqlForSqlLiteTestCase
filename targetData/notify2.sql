set lRes [list]
    set rc SQLITE_OK

set sql $zSql

    while {$rc=="SQLITE_OK" && $zSql ne ""
for {set i 0
lappend lRes [sqlite3_column_text $STMT 0]
        
error "$rc $sql [sqlite3_errmsg $db]" 
set msg "SQLITE_LOCKED blah..."
    while { [string match SQLITE_LOCKED* $msg] 
ATTACH 'test2.db' AS aux2; 
ATTACH 'test3.db' AS aux3; 
SELECT 
              (SELECT b FROM xxx WHERE a=(SELECT max(a) FROM xxx))==total(a) 
              FROM xxx WHERE a!=(SELECT max(a) FROM xxx);
      
sqlite3_close $::DB
        opendb
      
ATTACH 'test2.db' AS aux2;
      ATTACH 'test3.db' AS aux3;
      CREATE TABLE main.t1(a INTEGER PRIMARY KEY, b);
      CREATE TABLE aux2.t2(a INTEGER PRIMARY KEY, b);
      CREATE TABLE aux3.t3(a INTEGER PRIMARY KEY, b);
      INSERT INTO t1 SELECT NULL, 0;
      INSERT INTO t2 SELECT NULL, 0;
      INSERT INTO t3 SELECT NULL, 0;
    
ATTACH 'test2.db' AS aux2;
      ATTACH 'test3.db' AS aux3;
    
SELECT (SELECT max(a) FROM t1)
           + (SELECT max(a) FROM t2)
           + (SELECT max(a) FROM t3)
    
