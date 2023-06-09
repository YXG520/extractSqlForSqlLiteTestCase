

  CREATE TABLE t1(a TEXT, b TEXT, c TEXT COLLATE NOCASE);
  INSERT INTO t1 VALUES('abc','abc','Abc');
  INSERT INTO t1 VALUES('def','def','def');
  INSERT INTO t1 VALUES('ghi','ghi','GHI');
  CREATE INDEX t1a1 ON t1(a);
  CREATE INDEX t1a2 ON t1(a COLLATE nocase);

  SELECT * FROM t1 WHERE a=b AND c=b AND c='DEF';



  SELECT * FROM t1 WHERE a=b AND c=b AND c>='DEF' ORDER BY +a;



  SELECT * FROM t1 WHERE a=b AND c=b AND c<='DEF' ORDER BY +a;

