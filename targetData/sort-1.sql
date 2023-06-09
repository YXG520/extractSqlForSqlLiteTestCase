

    CREATE TABLE t1(
       n int,
       v varchar(10),
       log int,
       roman varchar(10),
       flt real
    );
    INSERT INTO t1 VALUES(1,'one',0,'I',3.141592653);
    INSERT INTO t1 VALUES(2,'two',1,'II',2.15);
    INSERT INTO t1 VALUES(3,'three',1,'III',4221.0);
    INSERT INTO t1 VALUES(4,'four',2,'IV',-0.0013442);
    INSERT INTO t1 VALUES(5,'five',2,'V',-11);
    INSERT INTO t1 VALUES(6,'six',2,'VI',0.123);
    INSERT INTO t1 VALUES(7,'seven',2,'VII',123.0);
    INSERT INTO t1 VALUES(8,'eight',3,'VIII',-1.6);
  
SELECT count(*) FROM t1

SELECT n FROM t1 ORDER BY n

SELECT n FROM t1 ORDER BY n ASC

SELECT ALL n FROM t1 ORDER BY n ASC

SELECT n FROM t1 ORDER BY n DESC

SELECT v FROM t1 ORDER BY v

SELECT n FROM t1 ORDER BY v

SELECT n FROM t1 ORDER BY v DESC

SELECT flt FROM t1 ORDER BY flt

SELECT flt FROM t1 ORDER BY flt DESC

SELECT roman FROM t1 ORDER BY roman

SELECT n FROM t1 ORDER BY log, flt

SELECT n FROM t1 ORDER BY log asc, flt

SELECT n FROM t1 ORDER BY log, flt ASC

SELECT n FROM t1 ORDER BY log ASC, flt asc

SELECT n FROM t1 ORDER BY log, flt DESC

SELECT n FROM t1 ORDER BY log ASC, flt DESC

SELECT n FROM t1 ORDER BY log DESC, flt

SELECT n FROM t1 ORDER BY log DESC, flt DESC
