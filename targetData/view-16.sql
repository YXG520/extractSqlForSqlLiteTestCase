

    CREATE VIEW IF NOT EXISTS v1 AS SELECT * FROM t1;
  


    SELECT sql FROM sqlite_master WHERE name='v1'
  


    DROP VIEW IF EXISTS nosuchview
  
