

  CREATE VIRTUAL TABLE xyz USING fts3();



  SELECT * FROM xyz WHERE xyz MATCH 'a NEAR/4294836224 a';
