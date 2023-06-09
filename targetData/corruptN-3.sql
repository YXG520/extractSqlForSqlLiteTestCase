

    CREATE TABLE t1(x INTEGER PRIMARY KEY AUTOINCREMENT, y);
    PRAGMA writable_schema = 1;
    UPDATE sqlite_schema 
      SET sql = 'CREATE TABLE sqlite_sequence(name-seq)' 
      WHERE name = 'sqlite_sequence';
  


    PRAGMA writable_schema = 1;
    INSERT INTO t1(y) VALUES('abc');
  
