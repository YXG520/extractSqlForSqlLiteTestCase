

  CREATE TABLE o1(x INTEGER PRIMARY KEY, y, z);
  CREATE INDEX p1 ON o1(z);
  CREATE INDEX p2 ON o1(y) WHERE z=1;



  SELECT * FROM o1 INDEXED BY p2 ORDER BY 1;



  DROP INDEX p1;
  DROP INDEX p2;
  CREATE INDEX p2 ON o1(y) WHERE z=1;
  CREATE INDEX p1 ON o1(z);



  SELECT * FROM o1 INDEXED BY p2 ORDER BY 1;

