

      PRAGMA encoding
    


      CREATE TABLE t2(a);
      INSERT INTO t2 VALUES(x'61006200630064006500');
      SELECT CAST(a AS text) FROM t2 WHERE CAST(a AS text) LIKE 'abc%';
    


      SELECT CAST(x'61006200630064006500' AS text);
    


      SELECT rowid FROM t2
       WHERE CAST(a AS text) LIKE CAST(x'610062002500' AS text);
    
SELECT 1 FROM sqlite_master LIMIT 1
