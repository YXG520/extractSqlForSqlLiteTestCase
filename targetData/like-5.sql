
PRAGMA case_sensitive_like=off



    CREATE TABLE t2(x TEXT COLLATE NOCASE);
    INSERT INTO t2 SELECT * FROM t1 ORDER BY rowid;
    CREATE INDEX i2 ON t2(x COLLATE NOCASE);
  



    PRAGMA case_sensitive_like=on;
  



    PRAGMA case_sensitive_like=off;
  


PRAGMA case_sensitive_like=off


S



    PRAGMA case_sensitive_like=on;
  



    PRAGMA case_sensitive_like=off;
  



    PRAGMA case_sensitive_like=off;
    INSERT INTO t2 VALUES('ZZ-upper-upper');
    INSERT INTO t2 VALUES('zZ-lower-upper');
    INSERT INTO t2 VALUES('Zz-upper-lower');
    INSERT INTO t2 VALUES('zz-lower-lower');
  

S

S

S


    PRAGMA case_sensitive_like=on;
    CREATE TABLE t3(x TEXT);
    CREATE INDEX i3 ON t3(x);
    INSERT INTO t3 VALUES('ZZ-upper-upper');
    INSERT INTO t3 VALUES('zZ-lower-upper');
    INSERT INTO t3 VALUES('Zz-upper-lower');
    INSERT INTO t3 VALUES('zz-lower-lower');
  

S

S

S
