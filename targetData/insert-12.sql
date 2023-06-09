

  CREATE TABLE t12a(a,b,c,d,e,f,g);
  INSERT INTO t12a VALUES(101,102,103,104,105,106,107);
  CREATE TABLE t12b(x);
  INSERT INTO t12b(x,rowid,x,x,x,x,x) SELECT * FROM t12a;
  SELECT rowid, x FROM t12b;



  CREATE TABLE tab1( value INTEGER);
  INSERT INTO tab1 (value, _rowid_) values( 11, 1);
  INSERT INTO tab1 (value, _rowid_) SELECT 22,999;
  SELECT * FROM tab1;



  CREATE TABLE t12c(a, b DEFAULT 'xyzzy', c);
  INSERT INTO t12c(a, rowid, c) SELECT 'one', 999, 'two';
  SELECT * FROM t12c;

