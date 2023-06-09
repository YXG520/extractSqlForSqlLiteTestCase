

  CREATE VIRTUAL TABLE fts USING fts3( tags TEXT);
  INSERT INTO fts (tags) VALUES ('tag1');
  SELECT * FROM fts WHERE tags MATCH 'tag1';



    UPDATE fts SET tags = 'tag1' WHERE rowid = 1;
    SELECT * FROM fts WHERE tags MATCH 'tag1';
  
