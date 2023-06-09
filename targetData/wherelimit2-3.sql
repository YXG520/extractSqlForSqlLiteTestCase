

    CREATE VIRTUAL TABLE ft USING fts5(x);
    INSERT INTO ft(rowid, x) VALUES(-45,   'a a');
    INSERT INTO ft(rowid, x) VALUES(12,    'a b');
    INSERT INTO ft(rowid, x) VALUES(444,   'a c');
    INSERT INTO ft(rowid, x) VALUES(12300, 'a d');
    INSERT INTO ft(rowid, x) VALUES(25400, 'a c');
    INSERT INTO ft(rowid, x) VALUES(25401, 'a b');
    INSERT INTO ft(rowid, x) VALUES(50000, 'a a');
  


    BEGIN;
      DELETE FROM ft ORDER BY rowid LIMIT 3;
      SELECT x FROM ft;
    ROLLBACK;
  


    BEGIN;
      DELETE FROM ft WHERE ft MATCH 'a' ORDER BY rowid LIMIT 3;
      SELECT x FROM ft;
    ROLLBACK;
  


    BEGIN;
      DELETE FROM ft WHERE ft MATCH 'b' ORDER BY rowid ASC LIMIT 1 OFFSET 1;
      SELECT rowid FROM ft;
    ROLLBACK;
  


    BEGIN;
      UPDATE ft SET x='hello' ORDER BY rowid LIMIT 2 OFFSET 2;
      SELECT x FROM ft;
    ROLLBACK;
  


    BEGIN;
      UPDATE ft SET x='hello' WHERE ft MATCH 'a' 
          ORDER BY rowid DESC LIMIT 2 OFFSET 2;
      SELECT x FROM ft;
    ROLLBACK;
  
