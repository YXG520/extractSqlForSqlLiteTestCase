

    CREATE TABLE t7(c7);
    INSERT INTO t7 VALUES(1);
    INSERT INTO t7 VALUES(2);
    INSERT INTO t7 VALUES(3);
    CREATE TABLE t8(c8);
    INSERT INTO t8 VALUES(100);
    INSERT INTO t8 VALUES(200);
    INSERT INTO t8 VALUES(300);
    CREATE TABLE t9(c9);
    INSERT INTO t9 VALUES(10000);
    INSERT INTO t9 VALUES(20000);
    INSERT INTO t9 VALUES(30000);

    SELECT (SELECT c7+c8 FROM t7) FROM t8;
  


    SELECT (SELECT max(c7)+c8 FROM t7) FROM t8;
  


    SELECT (SELECT c7+max(c8) FROM t8) FROM t7
  


    SELECT (SELECT max(c7)+max(c8) FROM t8) FROM t7
  


    SELECT (SELECT c8 FROM t8 WHERE rowid=max(c7)) FROM t7
  


    SELECT (SELECT (SELECT max(c7+c8+c9) FROM t9) FROM t8) FROM t7
  


    SELECT (SELECT (SELECT c7+max(c8+c9) FROM t9) FROM t8) FROM t7
  


    SELECT (SELECT (SELECT max(c7)+c8+c9 FROM t9) FROM t8) FROM t7
  


    SELECT (SELECT (SELECT c7+max(c8)+c9 FROM t9) FROM t8) FROM t7
  


    SELECT (SELECT (SELECT c7+c8+max(c9) FROM t9) FROM t8) FROM t7
  


    SELECT (SELECT (SELECT max(c7)+max(c8)+max(c9) FROM t9) FROM t8) FROM t7
  
