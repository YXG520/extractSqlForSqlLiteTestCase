

      PRAGMA data_version;
      PRAGMA journal_mode;
      SELECT * FROM t1;
    


      PRAGMA data_version;
      PRAGMA journal_mode;
      SELECT * FROM t1;
    

UPDATE t1 SET a=111*(a/100); PRAGMA data_version; SELECT * FROM t1

PRAGMA data_version; SELECT * FROM t1;
