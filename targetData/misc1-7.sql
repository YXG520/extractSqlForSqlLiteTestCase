

    CREATE TABLE error1(
      a TYPE PRIMARY KEY,
      b TYPE PRIMARY KEY
    );
  


    CREATE TABLE error1(
      a INTEGER PRIMARY KEY,
      b TYPE PRIMARY KEY
    );
  


    CREATE TABLE t5(a,b,c,PRIMARY KEY(a,b));
    INSERT INTO t5 VALUES(1,2,3);
    SELECT * FROM t5 ORDER BY a;
  


    INSERT INTO t5 VALUES(1,2,4);
  


    INSERT INTO t5 VALUES(0,2,4);
  


    SELECT * FROM t5 ORDER BY a;
  
