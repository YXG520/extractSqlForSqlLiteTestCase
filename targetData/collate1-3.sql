

    CREATE TABLE collate1t1(a COLLATE hex, b);
    INSERT INTO collate1t1 VALUES( '0x5', 5 );
    INSERT INTO collate1t1 VALUES( '1', 1 );
    INSERT INTO collate1t1 VALUES( '0x45', 69 );
    INSERT INTO collate1t1 VALUES( NULL, NULL );
    SELECT * FROM collate1t1 ORDER BY a;
  


    SELECT * FROM collate1t1 ORDER BY 1;
  


    SELECT * FROM collate1t1 ORDER BY collate1t1.a;
  


    SELECT * FROM collate1t1 ORDER BY main.collate1t1.a;
  


    SELECT a as c1, b as c2 FROM collate1t1 ORDER BY c1;
  


    SELECT a as c1, b as c2 FROM collate1t1 ORDER BY c1 COLLATE binary;
  


    SELECT a COLLATE binary as c1, b as c2
      FROM collate1t1 ORDER BY c1;
  


    DROP TABLE collate1t1;
  
