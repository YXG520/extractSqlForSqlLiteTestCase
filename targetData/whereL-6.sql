

  CREATE TABLE t1(x TEXT);
  CREATE TABLE t2(y TEXT);
  INSERT INTO t1 VALUES('good'),('bad');
  INSERT INTO t2 VALUES('good'),('bad');
  SELECT * FROM t1 JOIN t2 ON x=y
   WHERE x='good' AND y='good';



  CREATE TABLE tableA(
    ID           int,
    RunYearMonth int
  );
  INSERT INTO tableA VALUES(1,202003),(2,202003),(3,202003),(4,202004),
    (5,202004),(6,202004),(7,202004),(8,202004);
  CREATE TABLE tableB (
    ID           int,
    RunYearMonth int
  );
  INSERT INTO tableB VALUES(1,202004),(2,202004),(3,202004),(4,202004),
  (5,202004);
  SELECT *
   FROM (
        SELECT *
        FROM tableA
        WHERE RunYearMonth = 202004
    ) AS A
    INNER JOIN (
        SELECT *
        FROM tableB
        WHERE RunYearMonth = 202004
    ) AS B
    ON A.ID = B.ID
    AND A.RunYearMonth = B.RunYearMonth;

