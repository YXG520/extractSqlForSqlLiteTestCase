PRAGMA auto_vacuum = 'incremental';
  CREATE TABLE abc(a);
  INSERT INTO abc VALUES(randstr(1500,1500));

BEGIN;
  CREATE TABLE abc2(a);
  DELETE FROM abc;
  PRAGMA incremental_vacuum;
  COMMIT;

#   BEGIN;
#   DELETE FROM abc WHERE (oid%3)==0;
#   INSERT INTO abc SELECT a || '1234567890' FROM abc WHERE oid%2;
#   CREATE INDEX abc_i ON abc(a);
#   DELETE FROM abc WHERE (oid%2)==0;
#   DROP INDEX abc_i;
#   COMMIT;
# 
BEGIN;
  PRAGMA incremental_vacuum;
  DELETE FROM abc WHERE (oid%3)==0;
  PRAGMA incremental_vacuum;
  INSERT INTO abc SELECT a || '1234567890' FROM abc WHERE oid%2;
  PRAGMA incremental_vacuum;
  CREATE INDEX abc_i ON abc(a);
  DELETE FROM abc WHERE (oid%2)==0;
  PRAGMA incremental_vacuum;
  DROP INDEX abc_i;
  PRAGMA incremental_vacuum;
  COMMIT;

PRAGMA incremental_vacuum(5);

PRAGMA page_size = 1024;
      PRAGMA locking_mode = exclusive;
      PRAGMA auto_vacuum = 'incremental';
      BEGIN;
      CREATE TABLE a(i integer, b blob);
    
INSERT INTO a VALUES($ii, randstr(800,1500)); 
DELETE FROM a WHERE oid
pragma freelist_count
pragma page_count
pragma incremental_vacuum(5)
pragma freelist_count
pragma page_count
