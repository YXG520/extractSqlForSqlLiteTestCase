

      CREATE TEMP TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 'one');
      INSERT INTO t1 VALUES(2, 'two');
      ATTACH 'test2.db' AS aux;
      CREATE TABLE aux.t1 AS SELECT * FROM t1;
      PRAGMA aux.schema_version = 30;
      SELECT sql FROM aux.sqlite_master;
    


      ALTER TABLE aux.t1 ADD COLUMN c VARCHAR(128);
      SELECT sql FROM aux.sqlite_master;
    


      SELECT * FROM aux.t1;
    


        PRAGMA aux.schema_version;
      


      ALTER TABLE aux.t1 ADD COLUMN d DEFAULT 1000;
      SELECT sql FROM aux.sqlite_master;
    


      SELECT * FROM aux.t1;
    


        PRAGMA aux.schema_version;
      


      SELECT * FROM t1;
    


      DROP TABLE aux.t1;
      DROP TABLE t1;
    
