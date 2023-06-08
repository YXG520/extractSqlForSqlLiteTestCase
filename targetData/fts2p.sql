finish_test
  return

SELECT dump_terms(t1, 1) FROM t1 LIMIT 1;
  
SELECT dump_terms(t1, 0, 0, 0) FROM t1 LIMIT 1;
  
SELECT dump_terms(1, t1) FROM t1 LIMIT 1;
  
SELECT dump_terms(t1, 16, 16) FROM t1 LIMIT 1;
  
SELECT dump_doclist(t1) FROM t1 LIMIT 1;
  
SELECT dump_doclist(t1, NULL) FROM t1 LIMIT 1;
  
SELECT dump_doclist(t1, '') FROM t1 LIMIT 1;
  
SELECT dump_doclist(t1, 'a', 0) FROM t1 LIMIT 1;
  
SELECT dump_doclist(t1, 'a', 0, 0, 0) FROM t1 LIMIT 1;
  
SELECT dump_doclist(t1, 'a', 16, 16) FROM t1 LIMIT 1;
  
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
  
