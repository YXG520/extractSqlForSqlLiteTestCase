

  PRAGMA encoding=UTF16le;
  CREATE TABLE t1(x,a,b,c);
  INSERT INTO t1 VALUES(1,'ab','cd',1);
  INSERT INTO t1 VALUES(2,'gh','ef',5);
  INSERT INTO t1 VALUES(3,'pqr','fuzzy',99);
  INSERT INTO t1 VALUES(4,'abcdefg','xy',22);
  INSERT INTO t1 VALUES(5,'shoe','mayer',2953);
  SELECT x FROM t1 WHERE c=instr('abcdefg',b) OR a='abcdefg' ORDER BY +x;



  SELECT x FROM t1 WHERE a='abcdefg' OR c=instr('abcdefg',b) ORDER BY +x;

