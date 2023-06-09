

  CREATE TABLE f1(a, b);
  CREATE TABLE f2(c, d);
  CREATE TABLE f3(e, f);



  SELECT * FROM f3 WHERE (e, f) IN (
    SELECT a, b FROM f1 UNION ALL SELECT c, d FROM f2
  );



  CREATE INDEX f3e ON f3(e);
  SELECT * FROM f3 WHERE (e, f) IN (
    SELECT a, b FROM f1 UNION ALL SELECT c, d FROM f2
  );

