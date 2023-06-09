

    CREATE TABLE t3(x INTEGER UNIQUE NOT NULL);
    SELECT coalesce(min(x),999) FROM t3;
  


    SELECT coalesce(min(rowid),999) FROM t3;
  


    SELECT coalesce(max(x),999) FROM t3;
  


    SELECT coalesce(max(rowid),999) FROM t3;
  


    SELECT coalesce(max(rowid),999) FROM t3 WHERE rowid<25;
  
