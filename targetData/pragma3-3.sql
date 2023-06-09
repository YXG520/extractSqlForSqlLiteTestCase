

      PRAGMA data_version;
      BEGIN;
      CREATE TABLE t3(a,b,c);
      CREATE TABLE t4(x,y,z);
      INSERT INTO t4 VALUES(123,456,789);
      PRAGMA data_version;
      COMMIT;
      PRAGMA data_version;
    


      PRAGMA data_version;
      BEGIN;
      INSERT INTO t3(a,b,c) VALUES('abc','def','ghi');
      SELECT * FROM t3;
      PRAGMA data_version;
    


      PRAGMA data_version;
      SELECT * FROM t4;
    


      COMMIT;
      PRAGMA data_version;
      SELECT * FROM t4;
    


      PRAGMA data_version;
      SELECT * FROM t3;
      SELECT * FROM t4;
    
PRAGMA journal_mode=WAL
