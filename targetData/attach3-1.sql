

    ATTACH 'test2.db' AS aux;
  


    CREATE TABLE aux.t3(e, f);
  


    SELECT * FROM sqlite_master WHERE name = 't3';
  


    SELECT * FROM aux.sqlite_master WHERE name = 't3';
  


    INSERT INTO t3 VALUES(1, 2);
    SELECT * FROM t3;
  
