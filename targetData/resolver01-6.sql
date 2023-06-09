

  CREATE TABLE t61(name);
  SELECT min(name) FROM t61 GROUP BY lower(name);



  SELECT min(name) AS name FROM t61 GROUP BY lower(name); 



  CREATE TABLE t63(name);
  INSERT INTO t63 VALUES (NULL);
  INSERT INTO t63 VALUES ('abc');
  SELECT count(),
       NULLIF(name,'abc') AS name
    FROM t63
   GROUP BY lower(name);

