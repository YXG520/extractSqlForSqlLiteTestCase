

  CREATE TABLE t3(a PRIMARY KEY, b, c);
  CREATE INDEX t3i ON t3(b);


 UPDATE t3 SET c=1 WHERE b=?      


 UPDATE t3 SET c=1 WHERE rowid=?  

