

  CREATE TABLE t1(a); INSERT INTO t1 VALUES ('x');
  CREATE VIEW t2(b) AS SELECT json(TRUE);
  CREATE TABLE t3(b); INSERT INTO t3 VALUES(json(TRUE));



  SELECT * FROM t3, t1 WHERE NOT json_quote(b);



  SELECT * FROM t2, t1 WHERE NOT json_quote(b);



  WITH t4(a) AS MATERIALIZED (SELECT json(1)) SELECT subtype(a) FROM t4;



  WITH t4(a) AS NOT MATERIALIZED (SELECT json(1)) SELECT subtype(a) FROM t4;

