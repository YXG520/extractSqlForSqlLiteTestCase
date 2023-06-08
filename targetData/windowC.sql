CREATE TABLE x1(i INTEGER PRIMARY KEY, x);

DELETE FROM x1 
INSERT INTO x1 VALUES(NULL, $s)
INSERT INTO x1 VALUES(NULL, CAST ($s AS blob))
PRAGMA encoding=UTF16le;
  WITH separator(x) AS (VALUES(',a,'),(',bc,')),
       value(y) AS (VALUES(1),(x'5585d09013455178cd11ce4a'))
  SELECT group_concat(y,x) OVER (ORDER BY x ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING)
  FROM separator, value;

PRAGMA encoding=UTF16be;
  WITH separator(x) AS (VALUES(',a,'),(',bc,')),
       value(y) AS (VALUES(1),(x'5585d09013455178cd11ce4a'))
  SELECT group_concat(y,x) OVER (ORDER BY x ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING)
  FROM separator, value;

