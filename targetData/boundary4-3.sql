

    UPDATE t1 SET rowid=a, a=rowid
  


    ALTER TABLE t1 ADD COLUMN z; UPDATE t1 SET z=zeroblob(600)
  


    SELECT rowid, a, x FROM t1 ORDER BY +rowid
  


    SELECT rowid, a, x FROM t1 ORDER BY rowid
  


    SELECT rowid, a, x FROM t1 ORDER BY +rowid DESC
  


    SELECT rowid, a, x FROM t1 ORDER BY rowid DESC
  


    SELECT rowid, a, x FROM t1 ORDER BY +a
  


    SELECT rowid, a, x FROM t1 ORDER BY a
  


    SELECT rowid, a, x FROM t1 ORDER BY +a DESC
  


    SELECT rowid, a, x FROM t1 ORDER BY a DESC
  


    SELECT rowid, a, x FROM t1 ORDER BY +x
  


    SELECT rowid, a, x FROM t1 ORDER BY x
  


    SELECT rowid, a, x FROM t1 ORDER BY +x DESC
  


    SELECT rowid, a, x FROM t1 ORDER BY x DESC
  
