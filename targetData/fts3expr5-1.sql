

  CREATE VIRTUAL TABLE t0 USING fts3(x);
  SELECT rowid FROM t0 WHERE x MATCH '';



  SELECT rowid FROM t0 WHERE x MATCH '""';



  SELECT rowid FROM t0 WHERE x MATCH '"" ""';



  SELECT rowid FROM t0 WHERE x MATCH '"" OR ""';



  SELECT rowid FROM t0 WHERE x MATCH '"" NOT ""';



  SELECT rowid FROM t0 WHERE x MATCH '""""';

