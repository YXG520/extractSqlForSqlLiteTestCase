
CREATE TABLE test1(f1 int, f2 int primary key)
INSERT INTO test1 VALUES($i,[expr {1<<$i}])
SELECT count(*) FROM test1

SELECT f1 FROM test1 WHERE f2=65536


    SELECT name FROM sqlite_master 
    WHERE type='index' AND tbl_name='test1'
  

DROP table test1
SELECT name FROM sqlite_master WHERE type!='meta'
