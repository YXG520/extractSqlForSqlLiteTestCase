

    ANALYZE no_such_table
  


    SELECT count(*) FROM sqlite_master WHERE name='sqlite_stat1'
  


    ANALYZE no_such_db.no_such_table
  


    SELECT count(*) FROM sqlite_master WHERE name='sqlite_stat1'
  


    ANALYZE
  


    PRAGMA empty_result_callbacks=1;
    ANALYZE
  


    SELECT count(*) FROM sqlite_master WHERE name='sqlite_stat1'
  


    CREATE INDEX stat1idx ON sqlite_stat1(idx);
  


    CREATE INDEX main.stat1idx ON SQLite_stat1(idx);
  


    SELECT * FROM sqlite_stat1 WHERE idx NOT NULL
  


    ANALYZE main
  


    SELECT * FROM sqlite_stat1 WHERE idx NOT NULL
  


    CREATE TABLE t1(a,b);
    ANALYZE main.t1;
  


    SELECT * FROM sqlite_stat1
  


    ANALYZE t1;
  


    SELECT * FROM sqlite_stat1
  
