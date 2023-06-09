

    INSERT INTO t1 VALUES(1, NULL, 'one');
    INSERT INTO t1 VALUES(2, NULL, 'two');
    INSERT INTO t1 VALUES(3, NULL, 'three');
  


    INSERT INTO t1 VALUES(1, NULL, 'xyz') ON CONFLICT DO NOTHING;
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES(4, NULL, 'two') ON CONFLICT DO NOTHING;
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES(4, NULL, 'two') ON CONFLICT (c) DO UPDATE SET b = 1;
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES(2, NULL, 'zero') ON CONFLICT (a) DO UPDATE SET b=2;
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES(2, NULL, 'zero') ON CONFLICT (a) 
      DO UPDATE SET c = 'one';
  


    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES(2, NULL, 'zero') ON CONFLICT (a) 
      DO UPDATE SET (b, c) = (SELECT 'x', 'y');
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES(1, NULL, NULL) ON CONFLICT (a) 
      DO UPDATE SET (c, a) = ('four', 4);
    SELECT * FROM t1 ORDER BY 1;
  
