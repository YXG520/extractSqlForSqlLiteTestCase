

    CREATE TABLE t5(a, b);
    CREATE TABLE t6(c, d);
    INSERT INTO t5 VALUES(1, 2);
    INSERT INTO t5 VALUES(3, 4);
    INSERT INTO t5 VALUES(5, 6);
    INSERT INTO t6 VALUES('a', 'b');
    INSERT INTO t6 VALUES('c', 'd');
    CREATE INDEX i5 ON t5(a);
    CREATE INDEX i6 ON t6(c);
  

 SELECT t5.rowid AS r, c, d FROM t5, t6 ORDER BY a 

    if {$r==2
 DELETE FROM t5 


    INSERT INTO t5 VALUES(1, 2);
    INSERT INTO t5 VALUES(3, 4);
    INSERT INTO t5 VALUES(5, 6);
  
 SELECT t5.rowid AS r, c, d FROM t5, t6 ORDER BY a 

    if {$r==2
 DELETE FROM t5 WHERE rowid = 2 


    DELETE FROM t5;
    INSERT INTO t5 VALUES(1, 2);
    INSERT INTO t5 VALUES(3, 4);
    INSERT INTO t5 VALUES(5, 6);
  
 SELECT t5.rowid AS r, c, d FROM t5, t6 ORDER BY a 

    if {$r==2
 DELETE FROM t5 WHERE rowid = 1 


    DELETE FROM t5;
    INSERT INTO t5 VALUES(1, 2);
    INSERT INTO t5 VALUES(3, 4);
    INSERT INTO t5 VALUES(5, 6);
  
 SELECT t5.rowid AS r, c, d FROM t5, t6 ORDER BY a 

    if {$r==2
 DELETE FROM t5 WHERE rowid = 3 
