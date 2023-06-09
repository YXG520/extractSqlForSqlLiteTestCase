

    $::presql
    CREATE INDEX a1 ON abc(a);
    CREATE INDEX a2 ON abc(b);
    PRAGMA writable_schema = 1;
    UPDATE sqlite_master 
      SET name = 'a3', sql = 'CREATE INDEX a3' || substr(sql, 16, 10000)
      WHERE type = 'index';
    PRAGMA writable_schema = 0;
  

    $::presql
    SELECT * FROM sqlite_master;
  
