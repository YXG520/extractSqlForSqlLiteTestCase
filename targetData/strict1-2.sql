

  CREATE TABLE t1(
    a INT,
    b INTEGER,
    c BLOB,
    d TEXT,
    e REAL
  ) STRICT;



    SELECT strict FROM pragma_table_list('t1');
  


  INSERT INTO t1(a) VALUES('xyz');



  INSERT INTO t1(b) VALUES('xyz');



  INSERT INTO t1(c) VALUES('xyz');



  INSERT INTO t1(d) VALUES(x'3142536475');



  INSERT INTO t1(e) VALUES('xyz');

