

  CREATE TABLE t3(a, b, c, PRIMARY KEY(a, b)) WITHOUT ROWID;


 INSERT INTO t3 VALUES($i%2, $i, 'xyz') 
 ANALYZE 

S