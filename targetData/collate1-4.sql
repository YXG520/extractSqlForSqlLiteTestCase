

    CREATE TABLE collate1t1(c1 numeric, c2 text);
    INSERT INTO collate1t1 VALUES(1, 1);
    INSERT INTO collate1t1 VALUES(12, 12);
    INSERT INTO collate1t1 VALUES(NULL, NULL);
    INSERT INTO collate1t1 VALUES(101, 101);
  


    SELECT c1 FROM collate1t1 ORDER BY 1;
  


    SELECT c2 FROM collate1t1 ORDER BY 1;
  


    SELECT c2+0 FROM collate1t1 ORDER BY 1;
  


    SELECT c1||'' FROM collate1t1 ORDER BY 1;
  


    SELECT (c1||'') COLLATE numeric FROM collate1t1 ORDER BY 1;
  


    DROP TABLE collate1t1;
  
