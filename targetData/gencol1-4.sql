

  CREATE TABLE t0 (
    c0,
    c1 a UNIQUE AS (1),
    c2,
    c3 REFERENCES t0(c1)
  );
  PRAGMA foreign_keys = true;
  INSERT INTO t0(c0,c2,c3) VALUES(0,0,1);



  REPLACE INTO t0(c0,c2,c3) VALUES(0,0,0),(0,0,0);

