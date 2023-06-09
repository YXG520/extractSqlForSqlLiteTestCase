

      CREATE TABLE t4(m INTEGER PRIMARY KEY AUTOINCREMENT, n);
      CREATE TABLE t5(o, p INTEGER PRIMARY KEY AUTOINCREMENT);
    

      ATTACH 'test2.db' as aux;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
      SELECT 3, * FROM aux.sqlite_sequence;
    


      INSERT INTO t4 VALUES(NULL,1);
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
      SELECT 3, * FROM aux.sqlite_sequence;
    


      INSERT INTO t5 VALUES(100,200);
      SELECT * FROM sqlite_sequence
    


      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
      SELECT 3, * FROM aux.sqlite_sequence;
    
