

    BEGIN;
    CREATE TABLE A (id INTEGER PRIMARY KEY AUTOINCREMENT, val TEXT);
    INSERT INTO A VALUES(1,'123');
    INSERT INTO A VALUES(2,'456');
    CREATE TABLE B (id INTEGER PRIMARY KEY AUTOINCREMENT, val TEXT);
    INSERT INTO B VALUES(1,1);
    INSERT INTO B VALUES(2,2);
    CREATE TABLE A_B (B_id INTEGER NOT NULL, A_id INTEGER);
    INSERT INTO A_B VALUES(1,1);
    INSERT INTO A_B VALUES(2,2);
    COMMIT;
  


    SELECT 
      CASE 
         WHEN B.val = 1 THEN 'XYZ' 
         ELSE A.val 
      END AS Col1
    FROM B  
    LEFT OUTER JOIN A_B ON B.id = A_B.B_id  
    LEFT OUTER JOIN A ON A.id = A_B.A_id
    ORDER BY Col1 ASC;
  


    SELECT DISTINCT
      CASE 
         WHEN B.val = 1 THEN 'XYZ' 
         ELSE A.val 
      END AS Col1
    FROM B  
    LEFT OUTER JOIN A_B ON B.id = A_B.B_id  
    LEFT OUTER JOIN A ON A.id = A_B.A_id
    ORDER BY Col1 ASC;
  


    SELECT b.val, CASE WHEN b.val = 1 THEN 'xyz' ELSE b.val END AS col1 FROM b;
  


    SELECT DISTINCT 
      b.val, 
      CASE WHEN b.val = 1 THEN 'xyz' ELSE b.val END AS col1 
    FROM b;
  


    SELECT DISTINCT 
      b.val, 
      CASE WHEN b.val = '1' THEN 'xyz' ELSE b.val END AS col1 
    FROM b;
  
