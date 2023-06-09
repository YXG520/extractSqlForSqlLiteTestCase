



    PRAGMA page_size = 1024;
    PRAGMA journal_mode = delete;
    PRAGMA auto_vacuum = off;
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, 'one');
  

 CREATE TABLE t2(a, b) 

 CREATE TABLE t3(a, b) 

 CREATE TABLE t3(a, b) 


}



}
  sqlite3 db1a test.db
  sqlite3 db2a test2.db

  foreach db {db1a db2a

      PRAGMA page_size = 1024;
      PRAGMA journal_mode = delete;
      PRAGMA auto_vacuum = off;
      CREATE TABLE t1(a, b);
    

 INSERT INTO t1 VALUES('x', 'y') 


 INSERT INTO t1 VALUES('v', 'w') 


 INSERT INTO t1 VALUES('t', 'u') 


 INSERT INTO t1 VALUES('r', 's') 


 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 

 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 

 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 

 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 

 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
 INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 


}


    lappend allq [lindex $q 0]
  

    if {[lindex $q 0]==$name
