

  CREATE TABLE t5(c INTEGER PRIMARY KEY, d TEXT COLLATE nocase);
  INSERT INTO t5 VALUES(17, 'fuzz');
  SELECT 1 FROM t5 WHERE 'fuzz' IN (d);  -- match
  SELECT 2 FROM t5 WHERE 'FUZZ' IN (d);  -- no match
  SELECT 3 FROM t5 WHERE d IN ('fuzz');  -- match
  SELECT 4 FROM t5 WHERE d IN ('FUZZ');  -- match

