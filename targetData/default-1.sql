

      CREATE TABLE t1(
        a INTEGER,
        b BLOB DEFAULT x'6869'
      );
      INSERT INTO t1(a) VALUES(1);
      SELECT * from t1;
    


    CREATE TABLE t2(
      x INTEGER,
      y INTEGER DEFAULT NULL
    );
    INSERT INTO t2(x) VALUES(1);
    SELECT * FROM t2;
  


    CREATE TABLE t3(
      x INTEGER,
      y INTEGER DEFAULT (max(x,5))
    )
  
