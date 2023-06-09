

      SELECT 1, name FROM sqlite_master WHERE type='table';
      SELECT 2, name FROM temp.sqlite_master WHERE type='table';
    


      CREATE TABLE t1(x INTEGER PRIMARY KEY AUTOINCREMENT, y);
      CREATE TEMP TABLE t3(a INTEGER PRIMARY KEY AUTOINCREMENT, b);
      SELECT 1, name FROM sqlite_master WHERE type='table';
      SELECT 2, name FROM sqlite_temp_master WHERE type='table';
    


      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    


      INSERT INTO t1 VALUES(10,1);
      INSERT INTO t3 VALUES(20,2);
      INSERT INTO t1 VALUES(NULL,3);
      INSERT INTO t3 VALUES(NULL,4);
    


      SELECT * FROM t1 UNION ALL SELECT * FROM t3;
    


      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    


      INSERT INTO t1 SELECT * FROM t3;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    


      INSERT INTO t3 SELECT x+100, y  FROM t1;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    


      DROP TABLE t3;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    


      CREATE TEMP TABLE t2(p INTEGER PRIMARY KEY AUTOINCREMENT, q);
      INSERT INTO t2 SELECT * FROM t1;
      DROP TABLE t1;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    


      DROP TABLE t2;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
