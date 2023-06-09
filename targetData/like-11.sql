

    CREATE TABLE t11(
      a INTEGER PRIMARY KEY,
      b TEXT COLLATE nocase,
      c TEXT COLLATE binary
    );
    INSERT INTO t11 VALUES(1, 'a','a');
    INSERT INTO t11 VALUES(2, 'ab','ab');
    INSERT INTO t11 VALUES(3, 'abc','abc');
    INSERT INTO t11 VALUES(4, 'abcd','abcd');
    INSERT INTO t11 VALUES(5, 'A','A');
    INSERT INTO t11 VALUES(6, 'AB','AB');
    INSERT INTO t11 VALUES(7, 'ABC','ABC');
    INSERT INTO t11 VALUES(8, 'ABCD','ABCD');
    INSERT INTO t11 VALUES(9, 'x','x');
    INSERT INTO t11 VALUES(10, 'yz','yz');
    INSERT INTO t11 VALUES(11, 'X','X');
    INSERT INTO t11 VALUES(12, 'YZ','YZ');
    SELECT count(*) FROM t11;
  

PRAGMA case_sensitive_like=OFF;

PRAGMA case_sensitive_like=ON;


    PRAGMA case_sensitive_like=OFF;
    CREATE INDEX t11b ON t11(b);
  

PRAGMA case_sensitive_like=ON;


    PRAGMA case_sensitive_like=OFF;
    DROP INDEX t11b;
    CREATE INDEX t11bnc ON t11(b COLLATE nocase);
  

CREATE INDEX t11bb ON t11(b COLLATE binary);

PRAGMA case_sensitive_like=ON;

PRAGMA case_sensitive_like=OFF;


    CREATE INDEX t11cnc ON t11(c COLLATE nocase);
    CREATE INDEX t11cb ON t11(c COLLATE binary);
  

S
