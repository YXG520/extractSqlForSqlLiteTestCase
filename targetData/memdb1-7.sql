

    CREATE TABLE t1(a, b);
    PRAGMA schema_version = 0;
  


      CREATE VIRTUAL TABLE t1 USING rtree(id, a, b, c, d);
    
