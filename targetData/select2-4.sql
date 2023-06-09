

    CREATE TABLE aa(a);
    CREATE TABLE bb(b);
    INSERT INTO aa VALUES(1);
    INSERT INTO aa VALUES(3);
    INSERT INTO bb VALUES(2);
    INSERT INTO bb VALUES(4);
    SELECT * FROM aa, bb WHERE max(a,b)>2;
  


    INSERT INTO bb VALUES(0);
    SELECT * FROM aa CROSS JOIN bb WHERE b;
  


    SELECT * FROM aa CROSS JOIN bb WHERE NOT b;
  


    SELECT * FROM aa, bb WHERE min(a,b);
  


    SELECT * FROM aa, bb WHERE NOT min(a,b);
  


    SELECT * FROM aa, bb WHERE CASE WHEN a=b-1 THEN 1 END;
  


    SELECT * FROM aa, bb WHERE CASE WHEN a=b-1 THEN 0 ELSE 1 END;
  
