

    CREATE TABLE t3(
      a text,
      b int,
      c float,
      PRIMARY KEY(b)
    );
  
INSERT INTO t3 VALUES('x${i}x',$i,0.$i)
SELECT c FROM t3 WHERE b==10
