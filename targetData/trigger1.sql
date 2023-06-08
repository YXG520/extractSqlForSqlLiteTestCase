CREATE TRIGGER trig UPDATE ON no_such_table BEGIN
       SELECT * from sqlite_master;
     END;
   
CREATE TEMP TRIGGER trig UPDATE ON no_such_table BEGIN
         SELECT * from sqlite_master;
       END;
     
CREATE TABLE t1(a);

CREATE TRIGGER trig UPDATE ON t1 FOR EACH STATEMENT BEGIN
        SELECT * FROM sqlite_master;
     END;
  
CREATE TRIGGER tr1 INSERT ON t1 BEGIN
          INSERT INTO t1 values(1);
         END;

CREATE TRIGGER IF NOT EXISTS tr1 DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     
CREATE TRIGGER tr1 DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     
CREATE TRIGGER "tr1" DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     
CREATE TRIGGER [tr1] DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     
BEGIN;
        CREATE TRIGGER tr2 INSERT ON t1 BEGIN
            SELECT * from sqlite_master; END;
        ROLLBACK;
        CREATE TRIGGER tr2 INSERT ON t1 BEGIN
            SELECT * from sqlite_master; END;
    
DROP TRIGGER IF EXISTS tr1;
        CREATE TRIGGER tr1 DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
        END
    
BEGIN;
        DROP TRIGGER tr2;
        ROLLBACK;
        DROP TRIGGER tr2;
    
DROP TRIGGER IF EXISTS biggles;
    
DROP TRIGGER biggles;
    
DROP TABLE t1;
        DROP TRIGGER tr1;
    
CREATE TEMP TABLE temp_table(a);
  
CREATE TRIGGER temp_trig UPDATE ON temp_table BEGIN
              SELECT * from sqlite_master;
          END;
          SELECT count(*) FROM sqlite_master WHERE name = 'temp_trig';
    
CREATE TRIGGER tr1 AFTER UPDATE ON sqlite_master BEGIN
       SELECT * FROM sqlite_master;
    END;
  
create table t1(a,b);
    insert into t1 values(1,'a');
    insert into t1 values(2,'b');
    insert into t1 values(3,'c');
    insert into t1 values(4,'d');
    create trigger r1 after delete on t1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
    delete from t1 where a=1 OR a=3;
    select * from t1;
    drop table t1;
  
create table t1(a,b);
    insert into t1 values(1,'a');
    insert into t1 values(2,'b');
    insert into t1 values(3,'c');
    insert into t1 values(4,'d');
    create trigger r1 after update on t1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
    update t1 set b='x-' || b where a=1 OR a=3;
    select * from t1;
    drop table t1;
  
create table t1(a,b);
    create trigger t1t instead of update on t1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
  
create view v1 as select * from t1;
    create trigger v1t before update on v1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
  
drop view v1;
    create view v1 as select * from t1;
    create trigger v1t AFTER update on v1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
  
CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
      SELECT * FROM;  -- Syntax error
    END;
  
CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
      SELECT * FROM t1;
      SELECT * FROM;  -- Syntax error
    END;
  
CREATE TEMP TABLE t2(x,y);
    
CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b);
      END;
    
INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    
INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    
CREATE TEMP TABLE t2(x,y);
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    
DROP TRIGGER r1;
      CREATE TEMP TRIGGER r1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b), (NEW.b*100, NEW.a*100);
      END;
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    
DROP TRIGGER r1;
      DELETE FROM t1;
      DELETE FROM t2;
      CREATE TEMP TRIGGER r1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b);
      END;
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    
DROP TABLE t2;
      CREATE TABLE t2(x,y);
      SELECT * FROM t2;
    
INSERT INTO t1 VALUES(3,4);
      SELECT * FROM t1 UNION ALL SELECT * FROM t2;
    
INSERT INTO t1 VALUES(5,6);
      SELECT * FROM t1 UNION ALL SELECT * FROM t2;
    
INSERT INTO t1 VALUES(3,4);
      SELECT * FROM t1; 
      SELECT * FROM t2;
    
INSERT INTO t1 VALUES(5,6);
      SELECT * FROM t1;
      SELECT * FROM t2;
    
CREATE TEMP TRIGGER r1 BEFORE INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b);
      END;
      INSERT INTO t1 VALUES(7,8);
      SELECT * FROM t2;
    
INSERT INTO t1 VALUES(9,10);
    
SELECT * FROM t2;
    
DROP TABLE t1;
      SELECT * FROM t2;
    
SELECT * FROM t2;
    
CREATE TABLE t2(x,y);
    DROP TABLE t1;
    INSERT INTO t2 VALUES(3, 4);
    INSERT INTO t2 VALUES(7, 8);
  
SELECT type, name FROM sqlite_master
CREATE TRIGGER t2 BEFORE DELETE ON t2 BEGIN
      SELECT RAISE(ABORT,'deletes are not permitted');
    END;
    SELECT type, name FROM sqlite_master;
  
DELETE FROM t2
SELECT * FROM t2
SELECT type, name FROM sqlite_master
DROP TRIGGER t2;
    SELECT type, name FROM sqlite_master;
  
SELECT * FROM t2
SELECT * FROM t2
CREATE TRIGGER 'trigger' AFTER INSERT ON t2 BEGIN SELECT 1; END;
    SELECT name FROM sqlite_master WHERE type='trigger';
  
DROP TRIGGER 'trigger';
    SELECT name FROM sqlite_master WHERE type='trigger';
  
CREATE TRIGGER "trigger" AFTER INSERT ON t2 BEGIN SELECT 1; END;
    SELECT name FROM sqlite_master WHERE type='trigger';
  
DROP TRIGGER "trigger";
    SELECT name FROM sqlite_master WHERE type='trigger';
  
CREATE TRIGGER [trigger] AFTER INSERT ON t2 BEGIN SELECT 1; END;
    SELECT name FROM sqlite_master WHERE type='trigger';
  
DROP TRIGGER [trigger];
    SELECT name FROM sqlite_master WHERE type='trigger';
  
CREATE TABLE t3(a,b);
        CREATE TABLE t4(x UNIQUE, b);
        CREATE TRIGGER r34 AFTER INSERT ON t3 BEGIN
          REPLACE INTO t4 VALUES(new.a,new.b);
        END;
        INSERT INTO t3 VALUES(1,2);
        SELECT * FROM t3 UNION ALL SELECT 99, 99 UNION ALL SELECT * FROM t4;
      
INSERT INTO t3 VALUES(1,3);
        SELECT * FROM t3 UNION ALL SELECT 99, 99 UNION ALL SELECT * FROM t4;
      
CREATE TABLE t3(a,b);
        CREATE TABLE t4(x UNIQUE, b);
        CREATE TRIGGER r34 AFTER INSERT ON t3 BEGIN
          REPLACE INTO t4 VALUES(new.a,new.b);
        END;
        INSERT INTO t3 VALUES(1,2);
        SELECT * FROM t3; SELECT 99, 99; SELECT * FROM t4;
      
INSERT INTO t3 VALUES(1,3);
        SELECT * FROM t3; SELECT 99, 99; SELECT * FROM t4;
      
DROP TABLE t3;
    DROP TABLE t4;
  
ATTACH 'test2.db' AS aux;
    
CREATE TABLE main.t4(a, b, c);
      CREATE TABLE temp.t4(a, b, c);
      CREATE TABLE aux.t4(a, b, c);
      CREATE TABLE insert_log(db, a, b, c);
    
CREATE TEMP TRIGGER trig1 AFTER INSERT ON main.t4 BEGIN 
        INSERT INTO insert_log VALUES('main', new.a, new.b, new.c);
      END;
      CREATE TEMP TRIGGER trig2 AFTER INSERT ON temp.t4 BEGIN 
        INSERT INTO insert_log VALUES('temp', new.a, new.b, new.c);
      END;
      CREATE TEMP TRIGGER trig3 AFTER INSERT ON aux.t4 BEGIN 
        INSERT INTO insert_log VALUES('aux', new.a, new.b, new.c);
      END;
    
INSERT INTO main.t4 VALUES(1, 2, 3);
      INSERT INTO temp.t4 VALUES(4, 5, 6);
      INSERT INTO aux.t4  VALUES(7, 8, 9);
    
SELECT * FROM insert_log;
    
BEGIN;
      INSERT INTO main.t4 VALUES(1, 2, 3);
      INSERT INTO temp.t4 VALUES(4, 5, 6);
      INSERT INTO aux.t4  VALUES(7, 8, 9);
      ROLLBACK;
    
SELECT * FROM insert_log;
    
DELETE FROM insert_log;
      INSERT INTO main.t4 VALUES(11, 12, 13);
      INSERT INTO temp.t4 VALUES(14, 15, 16);
      INSERT INTO aux.t4  VALUES(17, 18, 19);
    
SELECT * FROM insert_log;
    
DROP TABLE insert_log;
      CREATE TABLE aux.insert_log(db, d, e, f);
    
INSERT INTO main.t4 VALUES(21, 22, 23);
      INSERT INTO temp.t4 VALUES(24, 25, 26);
      INSERT INTO aux.t4  VALUES(27, 28, 29);
    
SELECT * FROM insert_log;
    
SELECT raise(abort,'message');
CREATE TABLE tA(a INTEGER PRIMARY KEY, b, c);
    CREATE TRIGGER tA_trigger BEFORE UPDATE ON "tA" BEGIN SELECT 1; END;
    INSERT INTO tA VALUES(1, 2, 3);
  
UPDATE tA SET a = 'abc' 
INSERT INTO tA VALUES('abc', 2, 3) 
CREATE TRIGGER main.t16err1 AFTER INSERT ON tA BEGIN
      INSERT INTO main.t16 VALUES(1,2,3);
    END;
  
CREATE TRIGGER main.t16err2 AFTER INSERT ON tA BEGIN
      UPDATE main.t16 SET rowid=rowid+1;
    END;
  
CREATE TRIGGER main.t16err3 AFTER INSERT ON tA BEGIN
      DELETE FROM main.t16;
    END;
  
CREATE TRIGGER main.t16err4 AFTER INSERT ON tA BEGIN
      UPDATE t16 NOT INDEXED SET rowid=rowid+1;
    END;
  
CREATE TRIGGER main.t16err5 AFTER INSERT ON tA BEGIN
      UPDATE t16 INDEXED BY t16a SET rowid=rowid+1 WHERE a=1;
    END;
  
CREATE TRIGGER main.t16err6 AFTER INSERT ON tA BEGIN
      DELETE FROM t16 NOT INDEXED WHERE a=123;
    END;
  
CREATE TRIGGER main.t16err7 AFTER INSERT ON tA BEGIN
      DELETE FROM t16 INDEXED BY t16a WHERE a=123;
    END;
  
CREATE TABLE t17a(ii INT);
  CREATE TABLE t17b(tt TEXT PRIMARY KEY, ss);
  CREATE TRIGGER t17a_ai AFTER INSERT ON t17a BEGIN
    INSERT INTO t17b(tt) VALUES(new.ii);
  END;
  CREATE TRIGGER t17b_ai AFTER INSERT ON t17b BEGIN
    UPDATE t17b SET ss = 4;
  END;
  INSERT INTO t17a(ii) VALUES('1');
  PRAGMA integrity_check;

CREATE TABLE t18(a PRIMARY KEY,b,c);
  INSERT INTO t18(a,b,c) VALUES(1,2,3);
  CREATE TRIGGER t18r1 BEFORE UPDATE ON t18 BEGIN
    UPDATE t18 SET b=1000 WHERE a=old.a;
  END;
  UPDATE t18 SET c=b WHERE a=1;
  SELECT * FROM t18;

DELETE FROM t18;
  INSERT INTO t18(a,b,c) VALUES(1,2,3);
  UPDATE t18 SET c=b, b=b+1 WHERE a=1;
  SELECT * FROM t18;

CREATE TABLE t19(a INT PRIMARY KEY, b, c)WITHOUT ROWID;
  INSERT INTO t19(a,b,c) VALUES(1,2,3);
  CREATE TRIGGER t19r3 BEFORE UPDATE ON t19 BEGIN SELECT new.b; END;
  UPDATE t19 SET c=b WHERE a=1;
  SELECT * FROM t19;

DELETE FROM t19;
  INSERT INTO t19(a,b,c) VALUES(1,2,3);
  UPDATE t19 SET c=CASE WHEN b=2 THEN b ELSE b+99 END WHERE a=1;
  SELECT * FROM t19;

CREATE TABLE t20_1(x);
  ATTACH ':memory:' AS aux;
  CREATE TABLE aux.t20_2(y);
  CREATE TABLE aux.t20_3(z);
  CREATE TEMP TRIGGER r20_3 AFTER INSERT ON t20_2 BEGIN UPDATE t20_3 SET z=z+1; END;
  DETACH aux;
  DROP TRIGGER r20_3;

PRAGMA recursive_triggers = true;
  CREATE TABLE t0(a, b, c UNIQUE);
  CREATE UNIQUE INDEX i0 ON t0(b) WHERE a;
  CREATE TRIGGER tr0 AFTER DELETE ON t0 BEGIN
    DELETE FROM t0;
  END;
  INSERT INTO t0(a,b,c) VALUES(0,0,9),(1,1,1);
  REPLACE INTO t0(a,b,c) VALUES(2,0,9);
  SELECT * FROM t0;

CREATE TABLE t1(
    a INTEGER PRIMARY KEY,
    b DOUBLE
  );
  CREATE TRIGGER x AFTER UPDATE ON t1 BEGIN
   SELECT sum(b)OVER(ORDER BY (SELECT b FROM t1 AS x 
                               WHERE b IN (t1.a,127,t1.b)
                               GROUP BY b))
     FROM t1
     GROUP BY a;
  END;
  CREATE TEMP TRIGGER x BEFORE INSERT ON t1 BEGIN
    UPDATE t1
       SET b=randomblob(10)
     WHERE b >= 'E'
       AND a < (SELECT a FROM t1 WHERE a<22 GROUP BY b);
  END;
  INSERT INTO t1(b) VALUES('Y'),('X'),('Z');
  SELECT a, CASE WHEN typeof(b)='text' THEN quote(b) ELSE '<blob>' END, '|' FROM t1;

CREATE TABLE t1(a INT);
  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t1 SELECT e_master LIMIT 1,#1;
  END;

