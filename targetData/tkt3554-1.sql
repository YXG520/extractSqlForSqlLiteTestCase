

    CREATE TABLE test ( obj, t1, t2, PRIMARY KEY(obj, t1, t2) );
  
    CREATE TRIGGER test_insert BEFORE INSERT ON test BEGIN
      UPDATE test SET t1 = new.t1 
        WHERE obj = new.obj AND new.t1 < t1 AND new.t2 >= t1;
  
      UPDATE test SET t2 = new.t2 
        WHERE obj = new.obj AND new.t2 > t2 AND new.t1 <= t2;
  
      SELECT RAISE(IGNORE) WHERE EXISTS (
        SELECT obj FROM test 
        WHERE obj = new.obj AND new.t1 >= t1 AND new.t2 <= t2
      );
    END;
  


    INSERT INTO test VALUES('a', 10000, 11000);
    SELECT * FROM test;
  


    INSERT INTO test VALUES('a', 9000, 10500);
  
 SELECT * FROM test 


    INSERT INTO test VALUES('a', 10000, 12000);
  
 SELECT * FROM test 
