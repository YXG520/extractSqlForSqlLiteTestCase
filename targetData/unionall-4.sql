


  CREATE TABLE t1_a(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1_a VALUES(123, 't1_a');
  CREATE TABLE t1_b(c INTEGER PRIMARY KEY, d TEXT);

  CREATE VIEW t1 AS
    SELECT a, b FROM t1_a
    UNION ALL
    SELECT c, d FROM t1_b;

  CREATE TABLE t3_a(k INTEGER PRIMARY KEY, v TEXT);
  INSERT INTO t3_a VALUES(456, 't3_a');
  CREATE TABLE t3_b(k INTEGER PRIMARY KEY, v TEXT);

  CREATE VIEW t3 AS
    SELECT * FROM t3_a
    UNION ALL
    SELECT * FROM t3_b;



  SELECT * FROM t1, t3 ORDER BY k;



  SELECT * FROM (SELECT * FROM t1, t3) ORDER BY k;



  SELECT * FROM (SELECT * FROM t1, t3), (
    SELECT max(a) OVER () FROM t1
      UNION ALL
    SELECT min(a) OVER () FROM t1
  )
  ORDER BY k;



  SELECT * FROM (SELECT * FROM t1, t3), (
    SELECT group_concat(a) OVER (ORDER BY a), 
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a),
           group_concat(a) OVER (ORDER BY a)
    FROM t1
  )
  ORDER BY k;



  SELECT * FROM (SELECT * FROM t1, t3) AS o, (
    SELECT * FROM t1 LEFT JOIN t3 ON a=k
  );

