

  CREATE TABLE t1300(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1300 VALUES(1,'coffee'),(2,'COFFEE'),(3,'stress'),(4,'STRESS');
  CREATE INDEX t1300bexpr ON t1300( substr(b,4) );
  SELECT a FROM t1300 WHERE substr(b,4)='ess' COLLATE nocase ORDER BY +a;

