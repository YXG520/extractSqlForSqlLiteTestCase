

    PRAGMA page_size = 1024;
    CREATE TABLE t1(x, y, z);
    INSERT INTO t1 VALUES('1', randstr(10000,10000), '2');
    INSERT INTO t1 VALUES('2', randstr(10000,10000), '4');
    INSERT INTO t1 VALUES('3', randstr(10000,10000), '6');
    CREATE TABLE t2(x);
  


    BEGIN;
      CREATE TRIGGER trig1 BEFORE DELETE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.rowid);
      END;
      DELETE FROM t1;
      SELECT * FROM t2;
  


 ROLLBACK 



    BEGIN;
      CREATE TRIGGER trig1 BEFORE DELETE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.x);
      END;
      DELETE FROM t1;
      SELECT * FROM t2;
  


 ROLLBACK 



    BEGIN;
      CREATE TRIGGER trig1 BEFORE DELETE ON t1 WHEN old.x='1' BEGIN
        INSERT INTO t2 VALUES(old.rowid);
      END;
      DELETE FROM t1;
      SELECT * FROM t2;
  


 ROLLBACK 



    BEGIN;
      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.rowid);
      END;
      UPDATE t1 SET y = '';
      SELECT * FROM t2;
  


 ROLLBACK 



    BEGIN;
      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.x);
      END;
      UPDATE t1 SET y = '';
      SELECT * FROM t2;
  


 ROLLBACK 



    BEGIN;
      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 WHEN old.x>='2' BEGIN
        INSERT INTO t2 VALUES(old.x);
      END;
      UPDATE t1 SET y = '';
      SELECT * FROM t2;
  


 ROLLBACK 

