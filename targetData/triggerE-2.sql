

  PRAGMA writable_schema = 1;
  INSERT INTO sqlite_master VALUES('trigger', 'tr1', 't1', 0,
    'CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN 
        INSERT INTO t2 VALUES(?1, ?2); 
     END'
  );

  INSERT INTO sqlite_master VALUES('trigger', 'tr2', 't3', 0,
    'CREATE TRIGGER tr2 AFTER INSERT ON t3 WHEN ?1 IS NULL BEGIN
        UPDATE t2 SET c=d WHERE c IS ?2;
     END'
  );



  INSERT INTO t1 VALUES(1, 2);
  SELECT * FROM t2;



    DELETE FROM t2;
    INSERT INTO t1 VALUES($one, ?1);
    SELECT * FROM t2;
  

 SELECT * FROM t1 
1 2 3 3


  DELETE FROM t2;
  INSERT INTO t2 VALUES('x', 'y');
  INSERT INTO t2 VALUES(NULL, 'z');
  INSERT INTO t3 VALUES(1, 2);
  SELECT * FROM t3;
  SELECT * FROM t2;

