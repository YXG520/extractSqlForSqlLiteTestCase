

  CREATE TABLE t600(a REAL CHECK( a<julianday('now') ));
  INSERT INTO t600(a) VALUES(1.0);



  CREATE TABLE t601(a REAL, b TEXT, CHECK( a<julianday(b) ));
  INSERT INTO t601(a,b) VALUES(1.0, '1970-01-01');



  INSERT INTO t601(a,b) VALUES(1e100, '1970-01-01');



  INSERT INTO t601(a,b) VALUES(10, 'now');



  INSERT INTO t600(a) VALUES(julianday('now')+10);



  CREATE TABLE t610(a,b);
  CREATE INDEX t610x1 ON t610(julianday('now')+b);
  INSERT INTO t610(a,b) VALUES(123,456);



  CREATE TABLE t611(a,b);
  CREATE INDEX t611x1 ON t611(julianday(a)+b);
  INSERT INTO t611(a,b) VALUES('1970-01-01',10.0);



  INSERT INTO t611(a,b) VALUES('now',10.0);



  CREATE TABLE t620(a, b AS (a+julianday('now')));
  INSERT INTO t620 VALUES(10);

