
 SELECT tbl_name FROM sqlite_master WHERE type = 'table'

 ALTER TABLE t1 RENAME to fts_t1; 

 SELECT rowid, snippet(fts_t1) FROM fts_t1 WHERE a MATCH 'four'; 

 SELECT tbl_name FROM sqlite_master WHERE type = 'table'


    CREATE TABLE t1_segdir(a, b, c);
    ALTER TABLE fts_t1 RENAME to t1;
  

 SELECT rowid, snippet(fts_t1) FROM fts_t1 WHERE a MATCH 'four'; 

 SELECT tbl_name FROM sqlite_master WHERE type = 'table'


    BEGIN;
    INSERT INTO fts_t1(a, b, c) VALUES('one two three', 'one four', 'one two');
  


    ALTER TABLE fts_t1 RENAME to t1;
  

 SELECT rowid, snippet( fts_t1 ) FROM fts_t1 WHERE a MATCH 'four'; 

 SELECT tbl_name FROM sqlite_master WHERE type = 'table'

SELECT a FROM fts_t1

 SELECT a, b, c FROM fts_t1 WHERE c MATCH 'four'; 
