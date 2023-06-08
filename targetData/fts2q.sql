finish_test
  return

SELECT dump_terms(t1, $::level, $::index) FROM t1 LIMIT 1;
    
SELECT dump_terms(t1) FROM t1 LIMIT 1;
    
SELECT dump_doclist(t1, $::term, $::level, $::index) FROM t1 LIMIT 1;
    
SELECT dump_doclist(t1, $::term) FROM t1 LIMIT 1;
    
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY rowid;
  
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY rowid;
  
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY rowid;
  
SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY rowid;
  
SELECT OPTIMIZE(t1) FROM t1 LIMIT 1;
    SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
SELECT OFFSETS(t1) FROM t1
     WHERE t1 MATCH 'this OR that OR was OR a OR is OR test' ORDER BY rowid;
  
SELECT OPTIMIZE(t1) FROM t1 LIMIT 1;
    SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
UPDATE t1_segdir SET level = 2 WHERE level = 1 AND idx = 0;
    SELECT OPTIMIZE(t1) FROM t1 LIMIT 1;
    SELECT level, idx FROM t1_segdir ORDER BY level, idx;
  
