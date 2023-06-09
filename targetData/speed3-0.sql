

    CREATE TABLE main.t1(a INTEGER, b TEXT, c INTEGER);
  

    SELECT name FROM sqlite_master ORDER BY 1;
  


    CREATE TABLE aux.t1(a INTEGER, b TEXT, c INTEGER);
  

    SELECT name FROM aux.sqlite_master ORDER BY 1;
  


    SELECT count(*) FROM main.t1;
    SELECT count(*) FROM aux.t1;
  


    PRAGMA main.auto_vacuum;
    PRAGMA aux.auto_vacuum;
  
PRAGMA incremental_vacuum(500000)
