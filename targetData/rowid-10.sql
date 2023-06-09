

    CREATE TABLE t5(a);
    INSERT INTO t5 VALUES(1);
    INSERT INTO t5 VALUES(2);
    INSERT INTO t5 SELECT a+2 FROM t5;
    INSERT INTO t5 SELECT a+4 FROM t5;
    SELECT rowid, * FROM t5;
  

SELECT rowid, a FROM t5 WHERE rowid>=5.5

SELECT rowid, a FROM t5 WHERE rowid>=5.0

SELECT rowid, a FROM t5 WHERE rowid>5.5

SELECT rowid, a FROM t5 WHERE rowid>5.0

SELECT rowid, a FROM t5 WHERE 5.5<=rowid

SELECT rowid, a FROM t5 WHERE 5.5<rowid

SELECT rowid, a FROM t5 WHERE rowid<=5.5

SELECT rowid, a FROM t5 WHERE rowid<5.5

SELECT rowid, a FROM t5 WHERE 5.5>=rowid

SELECT rowid, a FROM t5 WHERE 5.5>rowid

SELECT rowid, a FROM t5 WHERE rowid>=5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE rowid>=5.0 ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE rowid>5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE rowid>5.0 ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE 5.5<=rowid ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE 5.5<rowid ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE rowid<=5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE rowid<5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE 5.5>=rowid ORDER BY rowid DESC

SELECT rowid, a FROM t5 WHERE 5.5>rowid ORDER BY rowid DESC


    CREATE TABLE t6(a);
    INSERT INTO t6(rowid,a) SELECT -a,a FROM t5;
    SELECT rowid, * FROM t6;
  

SELECT rowid, a FROM t6 WHERE rowid>=-5.5

SELECT rowid, a FROM t6 WHERE rowid>=-5.0

SELECT rowid, a FROM t6 WHERE rowid>=-5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE rowid>=-5.0 ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE -5.5<=rowid

SELECT rowid, a FROM t6 WHERE -5.5<=rowid ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE rowid>-5.5

SELECT rowid, a FROM t6 WHERE rowid>-5.0

SELECT rowid, a FROM t6 WHERE rowid>-5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE rowid>-5.0 ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE -5.5<rowid

SELECT rowid, a FROM t6 WHERE -5.5<rowid ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE rowid<=-5.5

SELECT rowid, a FROM t6 WHERE rowid<=-5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE -5.5>=rowid

SELECT rowid, a FROM t6 WHERE -5.5>=rowid ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE rowid<-5.5

SELECT rowid, a FROM t6 WHERE rowid<-5.5 ORDER BY rowid DESC

SELECT rowid, a FROM t6 WHERE -5.5>rowid

SELECT rowid, a FROM t6 WHERE -5.5>rowid ORDER BY rowid DESC
