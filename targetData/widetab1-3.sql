

  BEGIN;
  SELECT sum(c62) FROM t1;
  UPDATE t1 SET c62=c62+1 WHERE c00=1000;
  SELECT sum(c62) FROM t1;



  SELECT sum(c65) FROM t1;
  UPDATE t1 SET c65=c65+1 WHERE c00=1000;
  SELECT sum(c65) FROM t1;
  ROLLBACK;



  BEGIN;
  SELECT count(*) FROM t1;
  DELETE FROM t1 WHERE c=3102;
  SELECT COUNT(*) FROM t1;
  ROLLBACK;



  BEGIN;
  SELECT count(*) FROM t1;
  DELETE FROM t1 WHERE c=3102 AND d=3103;
  SELECT COUNT(*) FROM t1;
  ROLLBACK;



  BEGIN;
  DELETE FROM t1 WHERE (c,d) IN (VALUES(3102,3103),(4102,4103),(5102,5103),(1,2));
  SELECT count(*) FROM t1;
  ROLLBACK;

