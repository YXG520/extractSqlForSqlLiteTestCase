

  CREATE TABLE t1(x TEXT PRIMARY KEY) WITHOUT ROWID;
  CREATE VIEW t2 AS SELECT 0 FROM t1 WHERE x>='a' OR x='1';
  SELECT * FROM t2 RIGHT JOIN t1 ON true;



  CREATE TABLE  v1 (c1, PRIMARY KEY( c1 )) WITHOUT ROWID;
  CREATE VIEW   v2 AS SELECT 0 FROM v1 WHERE c1 IS '' OR c1 > '';
  CREATE VIEW   v3 AS SELECT 0 FROM v2 JOIN (v2 RIGHT JOIN v1);
  CREATE VIEW   v4 AS SELECT 0 FROM v3, v3;
  SELECT * FROM v3 JOIN v3 AS a0, v4 AS a1, v4 AS a2, v3 AS a3,
                v3 AS a4, v4 AS a5
    ORDER BY 1;
