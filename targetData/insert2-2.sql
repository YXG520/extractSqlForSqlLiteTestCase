

    CREATE TABLE t3(a,b,c);
    CREATE TABLE t4(x,y);
    INSERT INTO t4 VALUES(1,2);
    SELECT * FROM t4;
  


    INSERT INTO t3(a,c) SELECT * FROM t4;
    SELECT * FROM t3;
  


    DELETE FROM t3;
    INSERT INTO t3(c,b) SELECT * FROM t4;
    SELECT * FROM t3;
  


    DELETE FROM t3;
    INSERT INTO t3(c,a,b) SELECT x, 'hi', y FROM t4;
    SELECT * FROM t3;
  
