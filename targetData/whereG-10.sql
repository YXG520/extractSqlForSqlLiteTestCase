

  CREATE TABLE a(b TEXT);  INSERT INTO a VALUES(0),(4),(9);
  CREATE TABLE c(d NUM);
  CREATE VIEW f(g, h) AS SELECT b, 0 FROM a UNION SELECT d, d FROM c;
  SELECT g = g FROM f GROUP BY h;

