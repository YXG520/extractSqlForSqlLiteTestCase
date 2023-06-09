

  CREATE TABLE y1(a INTEGER, b);
  CREATE TABLE y2(c INTEGER, d);

  CREATE TABLE x3_a(a INTEGER PRIMARY KEY, b TEXT);
  CREATE TABLE x3_b(c INTEGER PRIMARY KEY, d TEXT);




  SELECT * FROM y1 CROSS JOIN y2 WHERE y1.a=y2.c AND y2.c IN (
    SELECT a FROM x3_a UNION ALL
    SELECT c FROM x3_b ORDER BY 1
  )

