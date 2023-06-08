CREATE VIEW "new view" AS SELECT * FROM t1 AS x, t1 AS y;
  SELECT * FROM "new view";

;
  SELECT * FROM sqlite_master WHERE name = 'new view';

DROP VIEW "new view";
  SELECT * FROM sqlite_master WHERE name = 'new view';

SELECT * FROM "new view"

b temp

no such table: temp.v1
b main

no such table: main.v1
b main

no such table: main.v2
b aux

no such table: v1
b aux

no such table: aux.v2
b aux

no such table: v3
