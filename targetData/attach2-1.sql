

    CREATE TABLE t1(a,b);
    CREATE INDEX x1 ON t1(a);
  

    CREATE TABLE t1(a,b);
    CREATE INDEX x1 ON t1(a);
  

    ATTACH 'test2.db' AS t2;
  
PRAGMA database_list

    lappend list $idx $name
  
DETACH t2
