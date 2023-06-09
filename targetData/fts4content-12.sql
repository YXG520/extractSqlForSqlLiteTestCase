

  CREATE VIRTUAL TABLE t1 USING fts4(a, content=t1 );
  INSERT INTO t1(rowid, a) VALUES(1, 'abc');


 
  SELECT * FROM t1; 


 
  SELECT * FROM t1('abc'); 


 
  SELECT count(*) FROM t1;



  CREATE VIRTUAL TABLE t1 USING fts4(a, content=t2 );
  CREATE VIRTUAL TABLE t2 USING fts4(a, content=t1 );
  INSERT INTO t1(rowid, a) VALUES(1, 'abc');


 
  SELECT * FROM t1; 


 
  SELECT * FROM t1('abc'); 


 
  SELECT count(*) FROM t1;

