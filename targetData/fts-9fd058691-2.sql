

  CREATE VIRTUAL TABLE fts USING fts3(tags TEXT);
  INSERT INTO fts (docid, tags) VALUES (1, 'tag1');
  INSERT INTO fts (docid, tags) VALUES (2, NULL);
  INSERT INTO fts (docid, tags) VALUES (3, 'three');



    UPDATE fts SET tags = 'two' WHERE rowid = 2;
    SELECT * FROM fts WHERE tags MATCH 'two';
  
