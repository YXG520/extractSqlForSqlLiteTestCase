

    CREATE TABLE t3(a INTEGER PRIMARY KEY, b INTEGER, c TEXT);
    INSERT INTO t3 VALUES(1, 1, 'one');
    INSERT INTO t3 VALUES(2, 2, '2');
    INSERT INTO t3 VALUES(3, 3, 3);
  


    SELECT * FROM t3 WHERE a>2;
  


    SELECT * FROM t3 WHERE a>'2';
  


    SELECT * FROM t3 WHERE a<'2';
  


    SELECT * FROM t3 WHERE a<c;
  


    SELECT * FROM t3 WHERE a=c;
  
