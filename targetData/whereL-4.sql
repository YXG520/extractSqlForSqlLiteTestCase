

  CREATE TABLE x(a, b, c);
  CREATE TABLE y(a, b);
  INSERT INTO x VALUES (1, 0, 1);
  INSERT INTO y VALUES (1, 2);
  SELECT x.a FROM x JOIN y ON x.c = y.a WHERE x.b = 1 AND x.b = 1;

