

  PRAGMA foreign_keys=OFF;
  CREATE TABLE t1(a,b,c,FOREIGN KEY(a,a,a,a,a,a,a,a,a,a,a,a,a,a) REFERENCES t0);
  INSERT INTO t1 VALUES(1,2,3);
  PRAGMA foreign_key_check;



  DROP TABLE t1;
  CREATE TABLE t1(a,b,c AS(1),d, FOREIGN KEY(c,d,b,a,b,d,b,c) REFERENCES t0);
  PRAGMA foreign_key_check;

