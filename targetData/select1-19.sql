

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);



  INSERT INTO t1
    SELECT 1,2,3,4,5,6,7
    UNION ALL SELECT 1,2,3,4,5,6,7
    ORDER BY 1;



  INSERT INTO t1
    SELECT 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
    UNION ALL SELECT 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
    ORDER BY 1;

