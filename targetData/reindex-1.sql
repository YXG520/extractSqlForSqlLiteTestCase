

    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    CREATE INDEX i1 ON t1(a);
    REINDEX;
  


    REINDEX t1;
  


    REINDEX i1;
  


    REINDEX main.t1;
  


    REINDEX main.i1;
  


    REINDEX bogus
  
