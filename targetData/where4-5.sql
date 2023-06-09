

    -- Allow the 'x' syntax for backwards compatibility
    CREATE TABLE t4(x,y,z,PRIMARY KEY('x' ASC, "y" ASC));
  

    SELECT *
      FROM t2 LEFT JOIN t4 b1
              LEFT JOIN t4 b2 ON b2.x=b1.x AND b2.y IN (b1.y);
  


    INSERT INTO t4 VALUES(1,1,11);
    INSERT INTO t4 VALUES(1,2,12);
    INSERT INTO t4 VALUES(1,3,13);
    INSERT INTO t4 VALUES(2,2,22);
    SELECT rowid FROM t4 WHERE x IN (1,9,2,5) AND y IN (1,3,NULL,2) AND z!=13;
  


    SELECT rowid FROM t4 WHERE x IN (1,9,NULL,2) AND y IN (1,3,2) AND z!=13;
  
