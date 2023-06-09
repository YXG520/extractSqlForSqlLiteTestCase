
DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT CAST(x AS text), typeof(x) FROM t1

DELETE FROM t1
SELECT CAST(x AS text), typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1

DELETE FROM t1
SELECT CAST(x AS text), typeof(x) FROM t1

DELETE FROM t1
SELECT CAST(x AS text), typeof(x) FROM t1

DELETE FROM t1
SELECT x, typeof(x) FROM t1


    DELETE FROM t1;
    INSERT INTO t1 VALUES('2.5e+9999');
    SELECT x, typeof(x) FROM t1;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES('2.5e+10000');
    SELECT x, typeof(x) FROM t1;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES('2.5e-9999');
    SELECT x, typeof(x) FROM t1;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES('2.5e-10000');
    SELECT x, typeof(x) FROM t1;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES('2.5e2147483650');
    SELECT x, typeof(x) FROM t1;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES('2.5e-2147483650');
    SELECT x, typeof(x) FROM t1;
  


    SELECT cast('-1e999' AS real);
  
