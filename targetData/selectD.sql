SELECT *
        FROM t1 JOIN (t2 JOIN (main.t4 JOIN aux.t4 ON aux.t4.a=main.t4.a+111)
                              ON main.t4.a=t2.a+222)
                     ON t2.a=t1.a+111;
    
CREATE TABLE t41(a INTEGER PRIMARY KEY, b INTEGER);
  CREATE TABLE t42(d INTEGER PRIMARY KEY, e INTEGER);
  CREATE TABLE t43(f INTEGER PRIMARY KEY, g INTEGER);
  EXPLAIN QUERY PLAN
  SELECT * 
   FROM t41
   LEFT JOIN (SELECT count(*) AS cnt, x1.d
                FROM (t42 INNER JOIN t43 ON d=g) AS x1
               WHERE x1.d>5
               GROUP BY x1.d) AS x2
                  ON t41.b=x2.d;
