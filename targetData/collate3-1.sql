

    CREATE TABLE collate3t1(c1 UNIQUE);
  


    SELECT * FROM collate3t1 ORDER BY 1 collate garbage;
  


    SELECT DISTINCT c1 COLLATE garbage FROM collate3t1;
  


    CREATE TABLE collate3t2(c1 collate garbage);
  


    CREATE INDEX collate3i1 ON collate3t1(c1 COLLATE garbage);
  

  DROP TABLE collate3t1;


 
    CREATE TABLE t1(a COLLATE caseless); 
    INSERT INTO t1 VALUES('Abc2');
    INSERT INTO t1 VALUES('abc1');
    INSERT INTO t1 VALUES('aBc3');
  
 SELECT * FROM t1 ORDER BY a 

 SELECT * FROM t1 ORDER BY a 

 CREATE INDEX i1 ON t1(a) 
 SELECT * FROM t1 ORDER BY a 

 SELECT * FROM t1 ORDER BY a 

 PRAGMA integrity_check 

 REINDEX 


    DROP TABLE t1;
    CREATE TABLE t1(a);
    CREATE INDEX i1 ON t1(a COLLATE caseless);
    INSERT INTO t1 VALUES('Abc2');
    INSERT INTO t1 VALUES('abc1');
    INSERT INTO t1 VALUES('aBc3');
    SELECT * FROM t1 ORDER BY a COLLATE caseless;
  

 SELECT * FROM t1 ORDER BY a COLLATE caseless

 REINDEX 

 PRAGMA integrity_check 

 REINDEX 

 PRAGMA integrity_check 

 PRAGMA integrity_check 

 DROP TABLE t1 
