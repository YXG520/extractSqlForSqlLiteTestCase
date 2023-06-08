SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY docid;
  
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY docid;
  
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY docid;
  
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY docid;
  
SELECT OPTIMIZE(t1) FROM t1 LIMIT 1;
    SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY docid;
  
SELECT OPTIMIZE(t1) FROM t1 LIMIT 1;
    SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
UPDATE t1_segdir SET level = 2 WHERE level = 1 AND idx = 0;
    SELECT OPTIMIZE(t1) FROM t1 LIMIT 1;
    SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
INSERT INTO xyz(xyz) VALUES('merge=2,2') 
ALTER TABLE xyz RENAME TO ott;
    SELECT name FROM sqlite_master WHERE name GLOB '???_*' ORDER BY 1;
  
