set got [execsql $sql]
  set wgot [list]
  set wres [list]
  foreach g $got { lappend wgot [collapse_whitespace $g] 
CREATE TABLE t1(x);
  CREATE TABLE t2(y);
  CREATE TABLE t3(z);
  CREATE TABLE t4(a);

  CREATE TRIGGER r1 INSERT ON t1 BEGIN 
    UPDATE t1 SET d='xyz' FROM t2, t3; 
  END;

ALTER TABLE t3 RENAME TO t5;
  SELECT sql FROM sqlite_schema WHERE type='trigger';

DROP TRIGGER r1;
  CREATE TRIGGER r1 INSERT ON t1 BEGIN 
    UPDATE t1 SET d='xyz' FROM t2, (SELECT * FROM t5); 
  END;

ALTER TABLE t5 RENAME TO t3;
  SELECT sql FROM sqlite_schema WHERE type='trigger';

CREATE TABLE t1(a,b);
    CREATE TABLE t2(c,d);
    CREATE TABLE t3(e,f);
    CREATE TABLE t4(e,f);
  
SELECT sqL FROM sqlite_schema WHERE type='trigger'
  
