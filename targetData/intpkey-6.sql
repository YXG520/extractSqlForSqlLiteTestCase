

    BEGIN;
    INSERT INTO t1 VALUES(20,'b-20','c-20');
    INSERT INTO t1 VALUES(21,'b-21','c-21');
    INSERT INTO t1 VALUES(22,'b-22','c-22');
    COMMIT;
    SELECT * FROM t1 WHERE a>=20;
  


    SELECT * FROM t1 WHERE b=='hello'
  


    DELETE FROM t1 WHERE b='b-21';
    SELECT * FROM t1 WHERE b=='b-21';
  


    SELECT * FROM t1 WHERE a>=20
  
