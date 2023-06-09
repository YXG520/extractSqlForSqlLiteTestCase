

  CREATE TABLE one(o);
  INSERT INTO one DEFAULT VALUES;

  CREATE TABLE t1(x, z);
  INSERT INTO t1 VALUES('aaa', 4.0);
  INSERT INTO t1 VALUES('aaa', 4.0);
  CREATE VIEW vvv AS
    SELECT * FROM t1
    UNION ALL
    SELECT 0, 0 WHERE 0;

  SELECT (
      SELECT sum(z) FROM vvv WHERE x='aaa'
  ) FROM one;



  DROP TABLE t1;
  CREATE TABLE t1(aaa);
  INSERT INTO t1(aaa) VALUES(9);
  SELECT (
    SELECT aaa FROM t1 GROUP BY (
      SELECT bbb FROM (
        SELECT ccc AS bbb FROM (
           SELECT 1 ccc
        ) WHERE rowid IS NOT 1
      ) WHERE bbb = 1
    )
  );

