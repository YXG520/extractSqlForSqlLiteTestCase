PRAGMA cache_size=100;
    CREATE TABLE t1(
      id INTEGER PRIMARY KEY,
      u1 TEXT UNIQUE,
      z BLOB NOT NULL,
      u2 TEXT UNIQUE
    );
  


UPDATE t1 SET u1=u1||'x',
          z = CASE WHEN id<$max_rowid
                   THEN zeroblob((random()&65535)%5000 + 1000) END;
    
UPDATE t1 SET u1=u1||'x',
          z = CASE WHEN id<$max1
                   THEN zeroblob((random()&65535)%5000 + 1000) END;
    
UPDATE t1 SET u1=u1||'x',
          z = CASE WHEN id<$max1
                   THEN zeroblob((random()&65535)%5000 + 1000) END;
    
UPDATE t1 SET u1=u1||'x',
          z = CASE WHEN id<$max1
                   THEN zeroblob((random()&65535)%5000 + 1000) END;
    
