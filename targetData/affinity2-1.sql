

  CREATE TABLE t1(
    xi INTEGER,
    xr REAL,
    xb BLOB,
    xn NUMERIC,
    xt TEXT
  );
  INSERT INTO t1(rowid,xi,xr,xb,xn,xt) VALUES(1,1,1,1,1,1);
  INSERT INTO t1(rowid,xi,xr,xb,xn,xt) VALUES(2,'2','2','2','2','2');
  INSERT INTO t1(rowid,xi,xr,xb,xn,xt) VALUES(3,'03','03','03','03','03');




  SELECT xi, typeof(xi) FROM t1 ORDER BY rowid;



  SELECT xr, typeof(xr) FROM t1 ORDER BY rowid;



  SELECT xb, typeof(xb) FROM t1 ORDER BY rowid;



  SELECT xn, typeof(xn) FROM t1 ORDER BY rowid;



  SELECT xt, typeof(xt) FROM t1 ORDER BY rowid;

