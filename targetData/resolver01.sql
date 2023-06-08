CREATE TABLE t1(x, y); INSERT INTO t1 VALUES(11,22);
    CREATE TABLE t2(y, z); INSERT INTO t2 VALUES(33,44);
    SELECT 1 AS y FROM t1, t2 ORDER BY y;
  
SELECT 1 AS yy FROM t1, t2 ORDER BY y;
  
CREATE TABLE t3(x,y); INSERT INTO t3 VALUES(11,44),(33,22);
    SELECT x AS y FROM t3 ORDER BY y;
  
SELECT x AS yy FROM t3 ORDER BY y;
  
SELECT x AS yy FROM t3 ORDER BY yy;
  
SELECT x AS yy FROM t3 ORDER BY 1;
  
SELECT 2 AS y FROM t1, t2 ORDER BY y COLLATE nocase;
  
SELECT 2 AS yy FROM t1, t2 ORDER BY y COLLATE nocase;
  
SELECT x AS y FROM t3 ORDER BY y COLLATE nocase;
  
SELECT x AS yy FROM t3 ORDER BY y COLLATE nocase;
  
SELECT x AS yy FROM t3 ORDER BY yy COLLATE nocase;
  
SELECT x AS yy FROM t3 ORDER BY 1 COLLATE nocase;
  
SELECT 3 AS y FROM t1, t2 ORDER BY +y;
  
SELECT 2 AS yy FROM t1, t2 ORDER BY +y;
  
SELECT x AS y FROM t3 ORDER BY +y;
  
SELECT x AS yy FROM t3 ORDER BY +y;
  
SELECT x AS yy FROM t3 ORDER BY +yy
  
CREATE TABLE t4(m CHAR(2));
  INSERT INTO t4 VALUES('az');
  INSERT INTO t4 VALUES('by');
  INSERT INTO t4 VALUES('cx');
  SELECT '1', substr(m,2) AS m FROM t4 ORDER BY m;
  SELECT '2', substr(m,2) AS m FROM t4 ORDER BY m COLLATE binary;
  SELECT '3', substr(m,2) AS m FROM t4 ORDER BY lower(m);

CREATE TABLE t5(m CHAR(2));
  INSERT INTO t5 VALUES('ax');
  INSERT INTO t5 VALUES('bx');
  INSERT INTO t5 VALUES('cy');
  SELECT count(*), substr(m,2,1) AS m FROM t5 GROUP BY m ORDER BY 1, 2;

SELECT count(*), substr(m,2,1) AS mx FROM t5 GROUP BY m ORDER BY 1, 2;

SELECT count(*), substr(m,2,1) AS mx FROM t5 GROUP BY mx ORDER BY 1, 2;

SELECT count(*), substr(m,2,1) AS mx FROM t5
   GROUP BY substr(m,2,1) ORDER BY 1, 2;

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

SELECT 2 AS x WHERE (SELECT x AS y WHERE 3>y);

SELECT 2 AS x WHERE (SELECT x AS y WHERE 1>y);

