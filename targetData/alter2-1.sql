
SELECT substr('abcdefg',1,3)


    CREATE TABLE abc(a, b);
    INSERT INTO abc VALUES(1, 2);
    INSERT INTO abc VALUES(3, 4);
    INSERT INTO abc VALUES(5, 6);
  



    SELECT * FROM abc;
  


    UPDATE abc SET c = 10 WHERE a = 1;
    SELECT * FROM abc;
  


    CREATE INDEX abc_i ON abc(c);
  


    SELECT c FROM abc ORDER BY c;
  


    SELECT * FROM abc WHERE c = 10;
  


    SELECT sum(a), c FROM abc GROUP BY c;
  

 SELECT * FROM abc; 

    UPDATE abc SET d = 11 WHERE c IS NULL AND a<4;
    SELECT * FROM abc;
  


    SELECT typeof(d) FROM abc;
  


    DROP TABLE abc;
  
