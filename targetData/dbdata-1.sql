

  CREATE TABLE T1(a, b);
  INSERT INTO t1(rowid, a ,b) VALUES(5, 'v', 'five');
  INSERT INTO t1(rowid, a, b) VALUES(10, 'x', 'ten');



  SELECT pgno, cell, field, quote(value) FROM sqlite_dbdata WHERE pgno=2;



  SELECT pgno, cell, field, quote(value) FROM sqlite_dbdata;



  INSERT INTO t1 VALUES(NULL, $big);
  SELECT value FROM sqlite_dbdata WHERE pgno=2 AND cell=2 AND field=1;



  DELETE FROM t1;
  INSERT INTO t1 VALUES(NULL, randomblob(5050));



    SELECT quote(value) FROM sqlite_dbdata WHERE pgno=2 AND cell=0 AND field=1;
  
 SELECT load_extension('../dbdata') 
