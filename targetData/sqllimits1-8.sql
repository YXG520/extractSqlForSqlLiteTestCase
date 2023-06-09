

  # Columns in a table.
  set cols [list]
  for {set i 0
CREATE TABLE t([join $cols ,])


  # Columns in the result-set of a SELECT.
  set cols [list]
  for {set i 0
SELECT [join $cols ,] FROM sqlite_master


  # Columns in the result-set of a sub-SELECT.
  set cols [list]
  for {set i 0
SELECT sql4 FROM (SELECT [join $cols ,] FROM sqlite_master)


  # Columns in an index.
  set cols [list]
  for {set i 0
CREATE TABLE t1(c);
CREATE INDEX i1 ON t1([join $cols ,]);
$sql1 ; $sql2


  # Columns in a GROUP BY clause.
  catchsql "SELECT * FROM t1 GROUP BY [join $cols ,]"



  # Columns in an ORDER BY clause.
  catchsql "SELECT * FROM t1 ORDER BY [join $cols ,]"



  # Assignments in an UPDATE statement.
  set cols [list]
  for {set i 0
UPDATE t1 SET [join $cols ,];


  # Columns in a view definition:
  set cols [list]
  for {set i 0
CREATE VIEW v1 AS SELECT [join $cols ,] FROM t1;
SELECT * FROM v1


  # Columns in a view definition (testing * expansion):
  set cols [list]
  for {set i 0
DROP VIEW IF EXISTS v1
CREATE TABLE t2([join $cols ,])
CREATE VIEW v1 AS SELECT *, c1 AS o FROM t2;
SELECT * FROM v1


  # ORDER BY columns
  set cols [list]
  for {set i 0
SELECT c FROM t1 ORDER BY [join $cols ,]


  # ORDER BY columns
  set cols [list]
  for {set i 0
SELECT c, c+1, c+2 FROM t1 UNION SELECT c-1, c-2, c-3 FROM t1
 ORDER BY [join $cols ,]
