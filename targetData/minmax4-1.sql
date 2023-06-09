

    CREATE TABLE t1(p,q);
    SELECT p, max(q) FROM t1;
  


    SELECT p, min(q) FROM t1;
  


    INSERT INTO t1 VALUES(1,2);
    SELECT p, max(q) FROM t1;
  


    SELECT p, min(q) FROM t1;
  


    INSERT INTO t1 VALUES(3,4);
    SELECT p, max(q) FROM t1;
  


    SELECT p, min(q) FROM t1;
    SELECT p FROM (SELECT p, min(q) FROM t1);
  


    INSERT INTO t1 VALUES(5,0);
    SELECT p, max(q) FROM t1;
    SELECT p FROM (SELECT max(q), p FROM t1);
  


    SELECT p, min(q) FROM t1;
  


    INSERT INTO t1 VALUES(6,1);
    SELECT p, max(q) FROM t1;
    SELECT p FROM (SELECT max(q), p FROM t1);
  


    SELECT p, min(q) FROM t1;
  


    INSERT INTO t1 VALUES(7,NULL);
    SELECT p, max(q) FROM t1;
  


    SELECT p, min(q) FROM t1;
  


    DELETE FROM t1 WHERE q IS NOT NULL;
    SELECT p, max(q) FROM t1;
  


    SELECT p, min(q) FROM t1;
  
