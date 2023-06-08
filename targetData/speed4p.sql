puts $::sqlout $sql\;

PRAGMA page_size=1024;
  PRAGMA cache_size=8192;
  PRAGMA locking_mode=EXCLUSIVE;
  BEGIN;
  CREATE TABLE t1(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);
  CREATE TABLE t2(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);
  CREATE TABLE t3(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);

  CREATE VIEW v1 AS SELECT rowid, i, t FROM t1;
  CREATE VIEW v2 AS SELECT rowid, i, t FROM t2;
  CREATE VIEW v3 AS SELECT rowid, i, t FROM t3;

CREATE INDEX i1 ON t1(t);
  CREATE INDEX i2 ON t2(t);
  CREATE INDEX i3 ON t3(t);
  COMMIT;

CREATE TABLE log(op TEXT, r INTEGER, i INTEGER, t TEXT);
  CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);
  CREATE TRIGGER t4_trigger1 AFTER INSERT ON t4 BEGIN
    INSERT INTO log VALUES('INSERT INTO t4', new.rowid, new.i, new.t);
  END;
  CREATE TRIGGER t4_trigger2 AFTER UPDATE ON t4 BEGIN
    INSERT INTO log VALUES('UPDATE OF t4', new.rowid, new.i, new.t);
  END;
  CREATE TRIGGER t4_trigger3 AFTER DELETE ON t4 BEGIN
    INSERT INTO log VALUES('DELETE OF t4', old.rowid, old.i, old.t);
  END;
  BEGIN;

COMMIT
DROP TABLE t4;
  DROP TABLE log;
  VACUUM;
  CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);
  BEGIN;

COMMIT
