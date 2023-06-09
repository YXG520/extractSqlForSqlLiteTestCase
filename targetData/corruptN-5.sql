

    CREATE TABLE t1(a, b);
    CREATE INDEX t1a ON t1(a);
    CREATE INDEX t1b ON t1(b);

    PRAGMA writable_schema = 1;
    UPDATE sqlite_schema 
      SET sql = strreplace(sql, 't1', 'json_each') 
      WHERE type='index';
  


      PRAGMA writable_schema = 1;
      SELECT * FROM t1
    
