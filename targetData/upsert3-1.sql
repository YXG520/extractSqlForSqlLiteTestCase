

  CREATE TABLE t1(k int, v text);
  CREATE UNIQUE INDEX x1 ON t1(k, v);



  INSERT INTO t1 VALUES(0,'abcdefghij')
     ON CONFLICT(k) DO NOTHING;



  INSERT INTO t1 VALUES(0,'abcdefghij')
     ON CONFLICT(v) DO NOTHING;



  INSERT INTO t1 VALUES(0, 'abcdefghij')
      ON CONFLICT(k,v) DO NOTHING;
  SELECT * FROM t1;



  INSERT INTO t1 VALUES(0, 'abcdefghij')
      ON CONFLICT(v,k) DO NOTHING;
  SELECT * FROM t1;

