PRAGMA journal_mode = wal;
  CREATE TABLE x(y);
  INSERT INTO x VALUES('z');

SELECT * FROM x 
SELECT * FROM x 
SELECT * FROM x 
SELECT * FROM x 
SELECT * FROM x 
PRAGMA auto_vacuum = off;
    PRAGMA journal_mode = WAL;
    CREATE TABLE b(c);
    INSERT INTO b VALUES('Tehran');
    INSERT INTO b VALUES('Qom');
    INSERT INTO b VALUES('Markazi');
    PRAGMA wal_checkpoint;
  
SELECT * FROM b 
INSERT INTO b VALUES('Gilan');
    INSERT INTO b VALUES('Ardabil');
  
SELECT * FROM b 
SELECT * FROM b 
SELECT * FROM b 
SELECT * FROM b 
