

    CREATE VIRTUAL TABLE t1 USING fts4;
      BEGIN;
  


  SELECT blockid, length(block) FROM t1_segments;






  SELECT count(*) FROM t1 WHERE t1 MATCH 'a b';



  SELECT count(*) FROM t1 WHERE t1 MATCH 'b';

