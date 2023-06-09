

    DELETE FROM test1 WHERE f1<=5;
    INSERT INTO test1(f1,f2) VALUES(8,88);
    INSERT INTO test1(f1,f2) VALUES(8,888);
    INSERT INTO test1(f1,f2) VALUES(77,128);
    INSERT INTO test1(f1,f2) VALUES(777,128);
  
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f2=f2+1 WHERE f1==8
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f2=f2-1 WHERE f1==8 and f2>800
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f2=f2-1 WHERE f1==8 and f2<800
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f1=f1+1 WHERE f2==128
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f1=f1-1 WHERE f1>100 and f2==128
SELECT * FROM test1 ORDER BY f1,f2


    PRAGMA count_changes=on;
    UPDATE test1 SET f1=f1-1 WHERE f1<=100 and f2==128;
  


    PRAGMA count_changes=off;
    SELECT * FROM test1 ORDER BY f1,f2
  
