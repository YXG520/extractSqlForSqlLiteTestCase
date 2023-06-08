SELECT rowid FROM t1 ORDER BY rowid;
  
SELECT rowid FROM t1 WHERE c LIKE '%test' ORDER BY rowid;
  
SELECT rowid FROM t1 WHERE c LIKE 'That%' ORDER BY rowid;
  
SELECT rowid FROM t1 WHERE rowid in (1, 2, 10);
  
SELECT t1.rowid, weight FROM t1, t2 WHERE t2.id = t1.rowid ORDER BY weight;
  
SELECT t1.rowid, weight FROM t1, t2
           WHERE t2.weight>5 AND t2.id = t1.rowid ORDER BY weight;
  
SELECT rowid FROM t1 WHERE t1 MATCH 'this' ORDER BY rowid;
  
SELECT t1.rowid, weight FROM t1, t2
     WHERE t1 MATCH 'this' AND t1.rowid = t2.id ORDER BY weight;
  
