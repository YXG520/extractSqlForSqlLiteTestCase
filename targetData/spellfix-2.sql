

  CREATE VIRTUAL TABLE t2 USING spellfix1;
  INSERT INTO t2 (word, soundslike) VALUES('school', 'skuul');
  INSERT INTO t2 (word, soundslike) VALUES('psalm', 'sarm');
  SELECT word, matchlen FROM t2 WHERE word MATCH 'sar*' LIMIT 5;



  SELECT word, matchlen FROM t2 WHERE word MATCH 'skol*' LIMIT 5;

