CREATE VIRTUAL TABLE t1 USING fts4;
      BEGIN;
  
INSERT INTO t1 (docid, content) VALUES($i, $document) 
SELECT blockid, length(block) FROM t1_segments;

SELECT docid, content FROM t1 WHERE t1 MATCH 'a b';

SELECT docid, content FROM t1 WHERE t1 MATCH 'a b';

SELECT count(*) FROM t1 WHERE t1 MATCH 'a b';

SELECT count(*) FROM t1 WHERE t1 MATCH 'b';

