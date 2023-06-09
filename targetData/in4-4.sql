

  CREATE TABLE t4a(a TEXT, b TEXT COLLATE nocase, c);
  INSERT INTO t4a VALUES('ABC','abc',1);
  INSERT INTO t4a VALUES('def','xyz',2);
  INSERT INTO t4a VALUES('ghi','ghi',3);
  SELECT c FROM t4a WHERE a=b ORDER BY c;



  SELECT c FROM t4a WHERE b=a ORDER BY c;



  SELECT c FROM t4a WHERE (a||'')=b ORDER BY c;



  SELECT c FROM t4a WHERE (a||'')=(b||'') ORDER BY c;



  SELECT c FROM t4a WHERE a IN (b) ORDER BY c;



  SELECT c FROM t4a WHERE (a||'') IN (b) ORDER BY c;



  CREATE TABLE t4b(a TEXT, b NUMERIC, c);
  INSERT INTO t4b VALUES('1.0',1,4);
  SELECT c FROM t4b WHERE a=b;



  SELECT c FROM t4b WHERE b=a;



  SELECT c FROM t4b WHERE +a=b;



  SELECT c FROM t4b WHERE a=+b;



  SELECT c FROM t4b WHERE +b=a;



  SELECT c FROM t4b WHERE b=+a;



  SELECT c FROM t4b WHERE a IN (b);



  SELECT c FROM t4b WHERE b IN (a);



  SELECT c FROM t4b WHERE +b IN (a);

