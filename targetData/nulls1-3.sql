

  CREATE TABLE t1(a, b, c, d, UNIQUE (b));


  1 { CREATE INDEX i1 ON t1(a ASC NULLS LAST) 

1 {unsupported use of NULLS $err}


  CREATE TABLE first(nulls, last);
  INSERT INTO first(last, nulls) VALUES(100,200), (300,400), (200,300);
  SELECT * FROM first ORDER BY nulls;

