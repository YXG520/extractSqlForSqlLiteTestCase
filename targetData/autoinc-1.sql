

    SELECT name FROM sqlite_master WHERE type='table';
  


    CREATE TABLE t1(x INTEGER PRIMARY KEY AUTOINCREMENT, y);
    SELECT name FROM sqlite_master WHERE type='table';
  


    SELECT * FROM sqlite_sequence;
  


    CREATE INDEX seqidx ON sqlite_sequence(name)
  


    SELECT * FROM sqlite_sequence;
  

DROP TABLE sqlite_sequence

SELECT name FROM sqlite_master WHERE type='table'
