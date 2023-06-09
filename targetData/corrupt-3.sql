

SELECT rootpage FROM sqlite_master WHERE name = 't1i1'
SELECT rootpage FROM sqlite_master WHERE name = 't1'
PRAGMA schema_version

    PRAGMA writable_schema = 1;
    UPDATE sqlite_master SET rootpage = $t1_r WHERE name = 't1';
    UPDATE sqlite_master SET rootpage = $t1i1_r WHERE name = 't1i1';
    PRAGMA writable_schema = 0;
    PRAGMA schema_version = $cookie;
  


    INSERT INTO t1 VALUES('abc');
  


    SELECT * FROM t1;
  


    SELECT * FROM t1 WHERE oid = 10;
  


    SELECT * FROM t1 WHERE x = 'abcde';
  
