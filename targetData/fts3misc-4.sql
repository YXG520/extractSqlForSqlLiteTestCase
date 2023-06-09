

    PRAGMA page_size = 512;
    CREATE VIRTUAL TABLE t4 USING fts4;
    WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<8000 )
    INSERT INTO t4 SELECT 'a b c a b c a b c' FROM s;
  


    SELECT count(*) FROM t4 WHERE t4 MATCH '"a b c" OR "c a b"'
  


    SELECT quote(value) from t4_stat where id=0
  


    UPDATE t4_stat SET value = X'C03EC0B204C0A60800' WHERE id=0;
  


    SELECT count(*) FROM t4 WHERE t4 MATCH '"a b c" OR "c a b"'
  


    UPDATE t4_stat SET value = X'00C03EC0B204C0A608' WHERE id=0;
  


    SELECT count(*) FROM t4 WHERE t4 MATCH '"a b c" OR "c a b"'
  
