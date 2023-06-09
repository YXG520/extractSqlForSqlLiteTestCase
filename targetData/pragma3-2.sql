
PRAGMA data_version; SELECT * FROM t1;

DELETE FROM t1 WHERE a>300

    PRAGMA data_version;
    SELECT * FROM t1;
  
