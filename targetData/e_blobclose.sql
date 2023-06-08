CREATE TABLE x1(a INTEGER PRIMARY KEY, b DOTS);
  INSERT INTO x1 VALUES(-1, $dots);
  INSERT INTO x1 VALUES(-10, $dots);
  INSERT INTO x1 VALUES(-100, $dots);
  INSERT INTO x1 VALUES(-1000, $dots);
  INSERT INTO x1 VALUES(-10000, $dots);

main unlocked temp closed
main shared temp closed
main unlocked temp closed
PRAGMA lock_status 
PRAGMA lock_status 
PRAGMA lock_status 
PRAGMA lock_status 
PRAGMA lock_status 
PRAGMA lock_status 
BEGIN 
PRAGMA lock_status 
COMMIT 
PRAGMA lock_status 
PRAGMA lock_status 
INSERT INTO x1 VALUES(15, val()) 
PRAGMA lock_status 
SELECT * FROM x1 WHERE a = 15 
PRAGMA lock_status 
SELECT a, val() FROM x1 LIMIT 1 
INSERT INTO x1 VALUES(1, 'abc');
    SELECT * FROM x1 WHERE a=1;
  
SELECT * FROM x1 WHERE a=-10 
BEGIN ; SELECT * FROM x1 
database is locked
main unlocked temp closed
SELECT * FROM x1 WHERE a IN (1, -10);


