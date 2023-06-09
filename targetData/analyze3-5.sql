

    CREATE TABLE t1(x TEXT COLLATE NOCASE);
    CREATE INDEX i1 ON t1(x);
    INSERT INTO t1 VALUES('aaa');
    INSERT INTO t1 VALUES('abb');
    INSERT INTO t1 VALUES('acc');
    INSERT INTO t1 VALUES('baa');
    INSERT INTO t1 VALUES('bbb');
    INSERT INTO t1 VALUES('bcc');
  
SELECT * FROM t1 WHERE x LIKE ?
a%

    lappend R [sqlite3_column_text $S 0]
  


    lappend R [sqlite3_column_text $S 0]
  


SELECT * FROM t1 WHERE x LIKE ?
b%

    lappend R [sqlite3_column_text $S1 0]
  

SELECT * FROM t1 WHERE x = ?
a%

    lappend R [sqlite3_column_text $S1 0]
  

