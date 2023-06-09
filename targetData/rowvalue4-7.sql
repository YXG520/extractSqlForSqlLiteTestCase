

  CREATE TABLE f1(a, b, c);
  CREATE INDEX f1ab ON f1(a, b);



  SELECT (a COLLATE nocase, b) IN (SELECT a, b FROM f1) FROM f1;



  SELECT (a COLLATE nose, b) IN (SELECT a, b FROM f1) FROM f1;



  SELECT * FROM f1 WHERE (?, ? COLLATE nose) > (a, b);

