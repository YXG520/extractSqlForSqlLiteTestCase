

    CREATE TABLE tx(a INTEGER PRIMARY KEY, b, c);
    CREATE INDEX i1 ON tx(b);
    INSERT INTO tx VALUES(1, 1, 1);
    INSERT INTO tx VALUES(2, NULL, 2);
    INSERT INTO tx VALUES(3, 3, 3);
    INSERT INTO tx VALUES(4, NULL, 4);
    INSERT INTO tx VALUES(5, 5, 5);
    CREATE VIRTUAL TABLE te USING echo(tx);
  


    SELECT * FROM tx ORDER BY b NULLS FIRST;
  


    SELECT * FROM te ORDER BY b NULLS FIRST;
  


    SELECT * FROM tx ORDER BY b NULLS LAST;
  


    SELECT * FROM te ORDER BY b NULLS LAST;
  
