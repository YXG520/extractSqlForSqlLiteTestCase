
SELECT rowid FROM t1 WHERE t1 MATCH 'lorem'

SELECT rowid FROM t1 WHERE t1 MATCH 'lore*'

SELECT rowid FROM t1 WHERE t1 MATCH 'lorem*'

SELECT rowid FROM t1 WHERE t1 MATCH 'lore'

SELECT rowid FROM t1 WHERE t1 MATCH 'lo*'

SELECT rowid FROM t1 WHERE t1 MATCH 'l*'

SELECT rowid FROM t1 WHERE t1 MATCH 'lov*'

SELECT rowid FROM t1 WHERE t1 MATCH 'lo *'

SELECT rowid FROM t1 WHERE t1 MATCH '*'

SELECT rowid FROM t1 WHERE t1 MATCH '\

SELECT rowid FROM t1 WHERE t1 MATCH '\

SELECT rowid FROM t1 WHERE t1 MATCH '\

SELECT rowid FROM t1 WHERE t1 MATCH '\

  CREATE VIRTUAL TABLE t2 USING fts3(c);

  INSERT INTO t2(rowid, c) VALUES(1, $text);
  INSERT INTO t2(rowid, c) VALUES(2, 'Another lovely row');
  UPDATE t2 SET c = $ntext WHERE rowid = 1;

