

    CREATE TABLE t1(a, b, c COLLATE collate1);
    CREATE INDEX i1 ON t1(a COLLATE collate2, c, b);
  



    CREATE TABLE t1(a COLLATE mycollate, CHECK (a IN ('one', 'two', 'three')));
    INSERT INTO t1 VALUES('one');
  


    INSERT INTO t1 VALUES('two');
  


    CREATE TABLE t1(a, CHECK (a COLLATE mycollate IN ('one', 'two', 'three')));
    INSERT INTO t1 VALUES('one');
  


    INSERT INTO t1 VALUES('two');
  
