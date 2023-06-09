

    CREATE TABLE collate1t1(c1, c2);
    INSERT INTO collate1t1 VALUES(45, hex(45));
    INSERT INTO collate1t1 VALUES(NULL, NULL);
    INSERT INTO collate1t1 VALUES(281, hex(281));
  


    SELECT c2 FROM collate1t1 ORDER BY 1;
  


    SELECT c2 FROM collate1t1 ORDER BY 1 COLLATE hex;
  


    SELECT c2 FROM collate1t1 ORDER BY 1 COLLATE hex DESC;
  


   SELECT c2 FROM collate1t1 ORDER BY 1 COLLATE hex ASC;
  


    SELECT c2 COLLATE hex FROM collate1t1 ORDER BY 1
  


    SELECT c2 COLLATE hex FROM collate1t1 ORDER BY 1 ASC
  


    SELECT c2 COLLATE hex FROM collate1t1 ORDER BY 1 DESC
  


    DROP TABLE collate1t1;
  
