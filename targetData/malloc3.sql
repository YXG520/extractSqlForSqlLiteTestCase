# An SQL primitive parameter is a list of three elements, an id, a boolean
  # value indicating if the statement may cause transaction rollback when
  # malloc() fails, and the sql statement itself.
  set id [incr ::run_test_sql_id]
  if {$a2 == ""
$a
SELECT tbl_name FROM sqlite_master;
CREATE TABLE IF NOT EXISTS abc(a, b, c); 

SELECT tbl_name FROM sqlite_master;
SELECT * FROM abc
INSERT INTO abc VALUES(1, 2, 3);
INSERT INTO abc VALUES(4, 5, 6);
INSERT INTO abc VALUES(7, 8, 9);
SELECT * FROM abc
CREATE INDEX abc_i ON abc(a, b, c);
SELECT * FROM abc ORDER BY a DESC;
    
DELETE FROM abc WHERE a > 2;
CREATE TRIGGER abc_t AFTER INSERT ON abc BEGIN SELECT 'trigger!'; END;
CREATE VIEW abc_v AS SELECT * FROM abc;
SELECT name, tbl_name FROM sqlite_master ORDER BY name;
      SELECT * FROM abc;
    
BEGIN;DELETE FROM abc;

COMMIT;
DELETE FROM abc WHERE oid IN (SELECT oid FROM abc ORDER BY random() LIMIT 5);

SELECT count(*) FROM abc
SELECT min(
          (oid == a) AND 'String value ' || a == b AND a == length(c) 
      ) FROM abc;
    
DELETE FROM abc WHERE oid IN (SELECT oid FROM abc ORDER BY random() LIMIT 5);

SELECT count(*) FROM abc
SELECT min(
          (oid == a) AND 'String value ' || a == b AND a == length(c) 
      ) FROM abc;
    
DELETE FROM abc WHERE oid IN (SELECT oid FROM abc ORDER BY random() LIMIT 5);

SELECT count(*) FROM abc
SELECT min(
          (oid == a) AND 'String value ' || a == b AND a == length(c) 
      ) FROM abc;
    
SELECT a, b, c FROM abc
BEGIN;
INSERT INTO abc VALUES(9, 'XXXXX', 11, 12);
UPDATE abc SET a = a + 1, c = c + 1;
DELETE FROM abc WHERE a = 10;
COMMIT;
SELECT a, b, c FROM abc
BEGIN;
INSERT INTO abc (oid, a, padding, b, c) SELECT NULL, * FROM abc
SELECT a, count(*) FROM abc GROUP BY a;
INSERT INTO abc (oid, a, padding, b, c) SELECT NULL, * FROM abc
SELECT a, count(*) FROM abc GROUP BY a;
INSERT INTO abc (oid, a, padding, b, c) SELECT NULL, * FROM abc
SELECT a, count(*) FROM abc GROUP BY a;
INSERT INTO abc (oid, a, padding, b, c) SELECT NULL, * FROM abc
SELECT a, count(*) FROM abc GROUP BY a;
COMMIT;
SELECT a, count(*) FROM abc GROUP BY a;
BEGIN;
DELETE FROM abc WHERE oid %2
SELECT a, count(*) FROM abc GROUP BY a;
DELETE FROM abc
SELECT * FROM abc
ROLLBACK;
SELECT a, count(*) FROM abc GROUP BY a;
SELECT name, tbl_name FROM sqlite_master;
    
BEGIN;
CREATE TABLE def(d, e, f);
CREATE TABLE ghi(g, h, i);
SELECT name, tbl_name FROM sqlite_master;
    
CREATE VIEW v1 AS SELECT * FROM def, ghi
CREATE UNIQUE INDEX ghi_i1 ON ghi(g);
SELECT name, tbl_name FROM sqlite_master;
    
INSERT INTO def VALUES('a', 'b', 'c')
INSERT INTO def VALUES(1, 2, 3)
INSERT INTO ghi SELECT * FROM def
SELECT * FROM def, ghi WHERE d = g;
    
COMMIT
SELECT * FROM v1 WHERE d = g;
    
ATTACH 'test2.db' AS aux;
BEGIN
CREATE TABLE aux.tbl2(x, y, z)
INSERT INTO tbl2 VALUES(1, 2, 3)
INSERT INTO def VALUES(4, 5, 6)
SELECT * FROM tbl2, def WHERE d = x;
      
COMMIT
SELECT * FROM tbl2, def WHERE d = x;
      
SELECT * FROM ghi
-- There is a unique index on ghi(g), so this statement may not cause
  -- an automatic ROLLBACK. Hence the "-norollback" switch.
  INSERT INTO ghi SELECT '2'||g, h, i FROM ghi;

db eval [lindex $v2 2]
set ::rollback_hook_count 0

        set id [lindex $v 0]
        set testid "malloc3-(integrity $id).$iterid"

        set ac [sqlite3_get_autocommit $::DB]        ;# Auto-Commit
        sqlite3_memdebug_fail $iFail -repeat 0
        set rc [catch {db eval [lindex $v 2]
set catchupsql [lindex $v2 2]
