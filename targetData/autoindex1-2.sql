

    PRAGMA automatic_index=OFF;
    SELECT b, (SELECT d FROM t2 WHERE c=a) FROM t1;
  




    PRAGMA automatic_index=ON;
    ANALYZE;
    UPDATE sqlite_stat1 SET stat='10000' WHERE tbl='t1';
    -- Table t2 actually contains 8 rows.
    UPDATE sqlite_stat1 SET stat='16' WHERE tbl='t2';
    ANALYZE sqlite_master;
    SELECT b, (SELECT d FROM t2 WHERE c=a) FROM t1;
  




  UPDATE sqlite_stat1 SET stat='10000' WHERE tbl='t2';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN
  SELECT b, d FROM t1 CROSS JOIN t2 ON (c=a);

