

    CREATE UNIQUE INDEX b1c ON b1(c);
    INSERT INTO b1 VALUES(1, 'a', 1);
    INSERT INTO b1 VALUES(2, 'b', 15);
    INSERT INTO b1 VALUES(3, 'c', 3);
    INSERT INTO b1 VALUES(4, 'd', 4);
    INSERT INTO b1 VALUES(5, 'e', 5);
    INSERT INTO b1 VALUES(6, 'f', 6);
    INSERT INTO b1 VALUES(7, 'g', 7);
  


    UPDATE OR REPLACE b1 SET c=c+10 WHERE a BETWEEN 4 AND 7;
    SELECT * FROM b1 ORDER BY a;
  


    CREATE INDEX c1d ON c1(d, b);
    CREATE UNIQUE INDEX c1c ON c1(c, b);

    INSERT INTO c1 VALUES(1, 'a', 1,  1);
    INSERT INTO c1 VALUES(2, 'a', 15, 2);
    INSERT INTO c1 VALUES(3, 'a', 3,  3);
    INSERT INTO c1 VALUES(4, 'a', 4,  4);
    INSERT INTO c1 VALUES(5, 'a', 5,  5);
    INSERT INTO c1 VALUES(6, 'a', 6,  6);
    INSERT INTO c1 VALUES(7, 'a', 7,  7);
  


    UPDATE OR REPLACE c1 SET c=c+10 WHERE d BETWEEN 4 AND 7;
    SELECT * FROM c1 ORDER BY a;
  

 PRAGMA integrity_check 


    DROP INDEX c1d;
    DROP INDEX c1c;
    DELETE FROM c1;

    INSERT INTO c1 VALUES(1, 'a', 1,  1);
    INSERT INTO c1 VALUES(2, 'a', 15, 2);
    INSERT INTO c1 VALUES(3, 'a', 3,  3);
    INSERT INTO c1 VALUES(4, 'a', 4,  4);
    INSERT INTO c1 VALUES(5, 'a', 5,  5);
    INSERT INTO c1 VALUES(6, 'a', 6,  6);
    INSERT INTO c1 VALUES(7, 'a', 7,  7);

    CREATE INDEX c1d ON c1(d);
    CREATE UNIQUE INDEX c1c ON c1(c);
  


    UPDATE OR REPLACE c1 SET c=c+10 WHERE d BETWEEN 4 AND 7;
    SELECT * FROM c1 ORDER BY a;
  
