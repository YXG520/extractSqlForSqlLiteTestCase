BEGIN EXCLUSIVE;
    INSERT INTO t1 VALUES(5);
    COMMIT;
  
BEGIN EXCLUSIVE;
    INSERT INTO t1 VALUES(6);
    COMMIT;
  