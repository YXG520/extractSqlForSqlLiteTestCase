

    INSERT INTO foo (fooval) VALUES (17), (4711), (17)
      ON CONFLICT DO
      UPDATE SET refcnt = refcnt+1
    RETURNING fooid;
  


  CREATE TABLE bug(id INTEGER PRIMARY KEY NOT NULL, x);
  INSERT INTO bug(id,x) VALUES(20, NULL);
  UPDATE bug SET x=NULL WHERE id = 20 RETURNING quote(x), x IS NULL;

