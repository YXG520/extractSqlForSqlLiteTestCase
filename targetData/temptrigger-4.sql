

  CREATE TABLE t1(x);
  CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN
    SELECT 1,2,3;
  END;



  CREATE TEMP TABLE t1(x);

