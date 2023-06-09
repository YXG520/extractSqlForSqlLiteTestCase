

  CREATE TABLE t14(x);
  INSERT INTO t14 VALUES('abcdefghij');

SELECT 1 FROM [string repeat t14, [expr $nTbl-1]] t14;
