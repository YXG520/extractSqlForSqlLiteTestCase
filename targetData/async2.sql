BEGIN;
    UPDATE counter SET c = 2;
    CREATE TABLE t1(a PRIMARY KEY, b, c);
    CREATE TABLE t2(a PRIMARY KEY, b, c);
  COMMIT;

  BEGIN;
    UPDATE counter SET c = 3;
    INSERT INTO t1 VALUES('abcdefghij', 'four', 'score');
    INSERT INTO t2 VALUES('klmnopqrst', 'and', 'seven');
  COMMIT;

  UPDATE counter SET c = 'FIN';

SELECT name FROM sqlite_master;
          
SELECT * FROM t1;
          
SELECT * FROM t2;
          
SELECT * FROM t1;
          
SELECT * FROM t2;
          
