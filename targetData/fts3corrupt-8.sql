

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

