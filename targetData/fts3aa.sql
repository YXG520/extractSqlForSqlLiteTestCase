SELECT rowid FROM t1 WHERE content MATCH 'one'
SELECT rowid FROM t1 WHERE content MATCH 'one two'
SELECT rowid FROM t1 WHERE content MATCH 'two one'
SELECT rowid FROM t1 WHERE content MATCH 'one two three'
SELECT rowid FROM t1 WHERE content MATCH 'one three two'
SELECT rowid FROM t1 WHERE content MATCH 'two three one'
SELECT rowid FROM t1 WHERE content MATCH 'two one three'
SELECT rowid FROM t1 WHERE content MATCH 'three one two'
SELECT rowid FROM t1 WHERE content MATCH 'three two one'
SELECT rowid FROM t1 WHERE content MATCH 'one two THREE'
SELECT rowid FROM t1 WHERE content MATCH '  ONE    Two   three  '
SELECT rowid FROM t1 WHERE content MATCH '"one"'
SELECT rowid FROM t1 WHERE content MATCH '"one two"'
SELECT rowid FROM t1 WHERE content MATCH '"two one"'
SELECT rowid FROM t1 WHERE content MATCH '"one two three"'
SELECT rowid FROM t1 WHERE content MATCH '"one three two"'
SELECT rowid FROM t1 WHERE content MATCH '"one two three four"'
SELECT rowid FROM t1 WHERE content MATCH '"one three two four"'
SELECT rowid FROM t1 WHERE content MATCH '"one three five"'
SELECT rowid FROM t1 WHERE content MATCH '"one three" five'
SELECT rowid FROM t1 WHERE content MATCH 'five "one three"'
SELECT rowid FROM t1 WHERE content MATCH 'five "one three" four'
SELECT rowid FROM t1 WHERE content MATCH 'five four "one three"'
SELECT rowid FROM t1 WHERE content MATCH '"one three" four five'
SELECT rowid FROM t1 WHERE content MATCH 'one'
SELECT rowid FROM t1 WHERE content MATCH 'one -two'
SELECT rowid FROM t1 WHERE content MATCH '-two one'
SELECT rowid FROM t1 WHERE content MATCH 'one OR two'
SELECT rowid FROM t1 WHERE content MATCH '"one two" OR three'
SELECT rowid FROM t1 WHERE content MATCH 'three OR "one two"'
SELECT rowid FROM t1 WHERE content MATCH 'one two OR three'
SELECT rowid FROM t1 WHERE content MATCH 'three OR two one'
SELECT rowid FROM t1 WHERE content MATCH 'one two OR three OR four'
SELECT rowid FROM t1 WHERE content MATCH 'two OR three OR four one'
INSERT INTO t1(content) VALUES(NULL)
SELECT content FROM t1 WHERE rowid=$rowid
SELECT rowid FROM t1 WHERE content MATCH NULL
INSERT INTO t1(rowid, content) VALUES(0, 'four five')
SELECT content FROM t1 WHERE rowid = 0
INSERT INTO t1(rowid, content) VALUES(-1, 'three four')
SELECT content FROM t1 WHERE rowid = -1
SELECT rowid FROM t1 WHERE t1 MATCH 'four'
CREATE VIRTUAL TABLE t2 USING fts3(xyz=abc);
  SELECT xyz FROM t2;

CREATE VIRTUAL TABLE t3 USING fts4(xyz=abc);

CREATE VIRTUAL TABLE t3 USING fts4(xyz = abc);

CREATE VIRTUAL TABLE t3 USING fts3(tokenize=simple, tokenize=simple);
  SELECT tokenize FROM t3;

CREATE VIRTUAL TABLE t4 USING fts4(tokenize=simple, tokenize=simple);

CREATE VIRTUAL TABLE t0 USING fts4(order=desc);
  BEGIN;
  INSERT INTO t0(rowid, content) VALUES(1, 'abc');
  UPDATE t0 SET docid=5 WHERE docid=1;
  INSERT INTO t0(rowid, content) VALUES(6, 'abc');

SELECT docid FROM t0 WHERE t0 MATCH 'abc';

SELECT docid FROM t0 WHERE t0 MATCH '"abc abc"';

COMMIT 
SELECT docid FROM t0 WHERE t0 MATCH 'abc';

SELECT docid FROM t0 WHERE t0 MATCH '"abc abc"';

CREATE VIRTUAL TABLE t9 USING fts4(a, "", '---');

CREATE VIRTUAL TABLE t10 USING fts3(<, b, c);

CREATE VIRTUAL TABLE z1 USING fts3;
  INSERT INTO z1 VALUES('one two three'),('four one five'),('six two five');
  CREATE TRIGGER z1r1 AFTER DELETE ON z1_content BEGIN
    DELETE FROM z1;
  END;

DELETE FROM z1;

