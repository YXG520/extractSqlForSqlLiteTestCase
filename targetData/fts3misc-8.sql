

  CREATE VIRTUAL TABLE vt0 USING fts4(c0, prefix=1);



  BEGIN;
    INSERT INTO vt0 VALUES (0);
    INSERT INTO vt0(vt0) VALUES('optimize');
  COMMIT;



  INSERT INTO vt0(vt0) VALUES('integrity-check');

