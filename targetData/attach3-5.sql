

    CREATE VIEW aux.v1 AS SELECT * FROM t3;
  


    SELECT * FROM aux.sqlite_master WHERE name = 'v1';
  


    INSERT INTO aux.t3 VALUES('hello', 'world');
    SELECT * FROM v1;
  


    SELECT * FROM aux.sqlite_master WHERE name = 'tr1';
  
