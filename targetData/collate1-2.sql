

    CREATE TABLE collate1t1(c1, c2);
    INSERT INTO collate1t1 VALUES('5', '0x11');
    INSERT INTO collate1t1 VALUES('5', '0xA');
    INSERT INTO collate1t1 VALUES(NULL, NULL);
    INSERT INTO collate1t1 VALUES('7', '0xA');
    INSERT INTO collate1t1 VALUES('11', '0x11');
    INSERT INTO collate1t1 VALUES('11', '0x101');
  


    SELECT c1, c2 FROM collate1t1 ORDER BY 1 COLLATE numeric, 2 COLLATE hex;
  


    SELECT c1, c2 FROM collate1t1 ORDER BY 1 COLLATE binary, 2 COLLATE hex;
  


    SELECT c1, c2 FROM collate1t1 ORDER BY 1 COLLATE binary DESC, 2 COLLATE hex;
  


    SELECT c1, c2 FROM collate1t1 
        ORDER BY 1 COLLATE binary DESC, 2 COLLATE hex DESC;
  


    SELECT c1, c2 FROM collate1t1 
        ORDER BY 1 COLLATE binary ASC, 2 COLLATE hex ASC;
  


    SELECT c1 COLLATE numeric, c2 FROM collate1t1 
     ORDER BY 1, 2 COLLATE hex;
  


    SELECT c1 COLLATE hex, c2 FROM collate1t1 
     ORDER BY 1 COLLATE numeric, 2 COLLATE hex;
  


    SELECT c1, c2 COLLATE hex FROM collate1t1 
     ORDER BY 1 COLLATE numeric, 2;
  


    SELECT c1 COLLATE numeric, c2 COLLATE hex
      FROM collate1t1 
     ORDER BY 1, 2;
  


    SELECT c1 COLLATE binary, c2 COLLATE hex
      FROM collate1t1
     ORDER BY 1, 2;
  


    SELECT c1, c2
      FROM collate1t1 ORDER BY 1 COLLATE binary DESC, 2 COLLATE hex;
  


    SELECT c1 COLLATE binary, c2 COLLATE hex
      FROM collate1t1 
     ORDER BY 1 DESC, 2 DESC;
  


    SELECT c1 COLLATE hex, c2 COLLATE binary
      FROM collate1t1 
     ORDER BY 1 COLLATE binary ASC, 2 COLLATE hex ASC;
  


    DROP TABLE collate1t1;
  
