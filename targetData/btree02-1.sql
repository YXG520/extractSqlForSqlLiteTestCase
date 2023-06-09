

  CREATE TABLE t1(a TEXT, ax INTEGER, b INT, PRIMARY KEY(a,ax)) WITHOUT ROWID;
  WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<10)
    INSERT INTO t1(a,ax,b) SELECT printf('%02x',i+160), random(), i FROM c;
  CREATE INDEX t1a ON t1(a);
  CREATE TABLE t2(x,y);
  CREATE TABLE t3(cnt);
  WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<4)
    INSERT INTO t3(cnt) SELECT i FROM c;
  SELECT count(*) FROM t1;

SELECT printf('(%s,%s)',quote(a),quote(b)) FROM t1

SELECT a, ax, b, cnt FROM t1 CROSS JOIN t3 WHERE b IS NOT NULL

    if {$a==""
INSERT INTO t2(x,y) VALUES($b,$cnt)
INSERT INTO t1(a,ax,b) VALUES(printf('(%s)',$a),random(),$bx)
DELETE FROM t1 WHERE a=$a
COMMIT; BEGIN
