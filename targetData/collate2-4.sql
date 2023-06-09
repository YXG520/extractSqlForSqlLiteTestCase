

    CREATE TABLE collate2t2(b COLLATE binary);
    CREATE TABLE collate2t3(b text);
    INSERT INTO collate2t2 VALUES('aa');
    INSERT INTO collate2t3 VALUES('aa');
  


    SELECT collate2t1.a FROM collate2t1, collate2t2 
      WHERE collate2t1.b = collate2t2.b;
  


    SELECT collate2t1.a FROM collate2t1, collate2t2 
      WHERE collate2t2.b = collate2t1.b;
  


    SELECT collate2t1.a FROM collate2t1, collate2t3 
      WHERE collate2t1.b = collate2t3.b||''
      ORDER BY +collate2t1.a DESC;
  


    SELECT collate2t1.a FROM collate2t1, collate2t3 
      WHERE collate2t3.b||'' = collate2t1.b
      ORDER BY +collate2t1.a DESC;
  


    DROP TABLE collate2t3;
  
