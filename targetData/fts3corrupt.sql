CREATE VIRTUAL TABLE t1 USING fts3;
  INSERT INTO t1 VALUES('hello');

UPDATE t1_segdir SET root = $blob 
INSERT INTO t1 VALUES($w) 
INSERT INTO t1 VALUES('world');

DROP TABLE t1;

CREATE VIRTUAL TABLE t1 USING fts3;
  BEGIN;
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
  COMMIT;

UPDATE t1_segdir SET root = $blob 
SELECT rowid FROM t1 WHERE t1 MATCH 'hello'

DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts3;
  BEGIN;
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('world');
  COMMIT;

UPDATE t1_segdir SET root = $blob 
SELECT rowid FROM t1 WHERE t1 MATCH 'world'

DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts3;
  INSERT INTO t1(t1) VALUES('nodesize=24');

INSERT INTO t1 VALUES($s) 
UPDATE t1_segdir SET root = X'FFFFFFFFFFFFFFFF';
  SELECT rowid FROM t1 WHERE t1 MATCH 'world';

UPDATE t1_segdir SET root = $blob;
  SELECT rowid FROM t1 WHERE t1 MATCH 'world';

DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4;

INSERT INTO t1 VALUES('one') 
INSERT INTO t1 VALUES('two') 
INSERT INTO t1 VALUES('three') 
INSERT INTO t1 VALUES('four') 
UPDATE t1_stat SET value = X'0000';
  SELECT matchinfo(t1, 'nxa') FROM t1 WHERE t1 MATCH 't*';

UPDATE t1_stat SET value = NULL;
  SELECT matchinfo(t1, 'nxa') FROM t1 WHERE t1 MATCH 't*';

CREATE VIRTUAL TABLE f using fts3(a,b);
  CREATE TABLE f_stat(id INTEGER PRIMARY KEY, value BLOB);
  INSERT INTO f_segdir VALUES (2000, 0,0,0, '16', '');
  INSERT INTO f_segdir VALUES (1999, 0,0,0, '0 18',
                               x'000131030102000103323334050101010200');
  INSERT INTO f_segments (blockid) values (16);
  INSERT INTO f_segments values (0, x'');
  INSERT INTO f_stat VALUES (1,x'cf0f01');
  INSERT INTO f(f) VALUES ('merge=1');

CREATE VIRTUAL TABLE f USING fts3(a,b);
  INSERT INTO f_segdir VALUES (0,0,1,0,'0 0',x'01010101020101');
  SELECT  matchinfo( f , 'pcx')  FROM f WHERE b MATCH x'c533';

CREATE VIRTUAL TABLE f USING fts3(a);
  INSERT INTO f(f) VALUES('nodesize=24');
  BEGIN;
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');

    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
  COMMIT;
  BEGIN;
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');

    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
  COMMIT;

  SELECT count(*) FROM f_segments;

UPDATE f_segments SET block = (
    SELECT block FROM f_segments WHERE blockid=1
  ) WHERE blockid=2

INSERT INTO f(f) VALUES('merge=2,2');

