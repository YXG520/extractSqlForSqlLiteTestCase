ATTACH 'test.db2' AS aux; 
CREATE VIRTUAL TABLE t1 USING sqlite_dbpage();
  
PRAGMA journal_mode = off 
ATTACH 'test.db2' AS aux; 
CREATE VIRTUAL TABLE t1 USING sqlite_dbpage();
    UPDATE t1 SET data=zeroblob(1024) WHERE pgno=1 AND schema='aux';
  
PRAGMA journal_mode = off 
unable to open a temporary database file for storing temporary tables
CREATE TABLE x1(z, b);
  CREATE TRIGGER BEFORE INSERT ON x1 BEGIN
    DELETE FROM sqlite_dbpage WHERE pgno=100;
    UPDATE sqlite_dbpage SET data=null WHERE pgno=100;
  END;

PRAGMA trusted_schema = 1;

PRAGMA trusted_schema = 1;
  INSERT INTO x1 DEFAULT VALUES;

PRAGMA trusted_schema = 1 
INSERT INTO x1 DEFAULT VALUES; 
