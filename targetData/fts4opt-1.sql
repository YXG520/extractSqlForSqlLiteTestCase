
 CREATE TABLE t1(docid, words) 

    BEGIN;
      CREATE TEMP TABLE tmp_segdir(
        level, idx, start_block, leaves_end_block, end_block, root
      );

      INSERT INTO temp.tmp_segdir 
        SELECT 
        1024*(o.level / 1024) + 32,                                -- level
        sum(o.level<i.level OR (o.level=i.level AND o.idx>i.idx)), -- idx
        o.start_block, o.leaves_end_block, o.end_block, o.root     -- other
        FROM %_segdir o, %_segdir i 
        WHERE (o.level / 1024) = (i.level / 1024)
        GROUP BY o.level, o.idx;
  
      DELETE FROM %_segdir;
      INSERT INTO %_segdir SELECT * FROM temp.tmp_segdir;
      DROP TABLE temp.tmp_segdir;
  
    COMMIT;
  

 CREATE VIRTUAL TABLE t2 USING fts4(words, prefix="1,2,3") 
 SELECT * FROM t1 

    execsql { INSERT INTO t2(docid, words) VALUES($docid, $words) 


  SELECT level, count(*) FROM t2_segdir GROUP BY level


 INSERT INTO t2(t2) VALUES('integrity-check') 

 INSERT INTO t2(t2) VALUES('integrity-check') 


  SELECT level, count(*) FROM t2_segdir GROUP BY level


 INSERT INTO t2(t2) VALUES('merge=5,2') 
 SELECT level, count(*) FROM t2_segdir GROUP BY level 

 INSERT INTO t2(t2) VALUES('integrity-check') 


  INSERT INTO t2(words) SELECT words FROM t1;
  SELECT level, count(*) FROM t2_segdir GROUP BY level;

