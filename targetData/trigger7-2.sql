

      CREATE TRIGGER r1 AFTER UPDATE OF x ON t1 BEGIN
        SELECT '___update_t1.x___';
      END;
      CREATE TRIGGER r2 AFTER UPDATE OF y ON t1 BEGIN
        SELECT '___update_t1.y___';
      END;
    
EXPLAIN UPDATE t1 SET x=5

EXPLAIN UPDATE t1 SET x=5

EXPLAIN UPDATE t1 SET y=5

EXPLAIN UPDATE t1 SET y=5

EXPLAIN UPDATE t1 SET rowid=5

EXPLAIN UPDATE t1 SET rowid=5