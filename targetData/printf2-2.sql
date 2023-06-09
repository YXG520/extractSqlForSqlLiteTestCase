

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(-1,-2,-3);
  INSERT INTO t1 VALUES('abc','def','ghi');
  INSERT INTO t1 VALUES(1.5,2.25,3.125);
  SELECT printf('(%s)-%n-(%s)',a,b,c) FROM t1 ORDER BY rowid;



  SELECT printf('%s=(%p)',a,a) FROM t1 ORDER BY a;



  SELECT printf('%s=(%d/%g/%s)',a) FROM t1 ORDER BY a;

