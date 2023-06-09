

    DROP TABLE main.t1;
  

    PRAGMA count_changes = 1;

    CREATE TABLE t1(a PRIMARY KEY);
    CREATE TABLE t1_mirror(a);
    CREATE TABLE t1_mirror2(a);
    CREATE TRIGGER t1_bi BEFORE INSERT ON t1 BEGIN 
      INSERT INTO t1_mirror VALUES(new.a);
    END;
    CREATE TRIGGER t1_ai AFTER INSERT ON t1 BEGIN 
      INSERT INTO t1_mirror2 VALUES(new.a);
    END;
    CREATE TRIGGER t1_bu BEFORE UPDATE ON t1 BEGIN 
      UPDATE t1_mirror SET a = new.a WHERE a = old.a;
    END;
    CREATE TRIGGER t1_au AFTER UPDATE ON t1 BEGIN 
      UPDATE t1_mirror2 SET a = new.a WHERE a = old.a;
    END;
    CREATE TRIGGER t1_bd BEFORE DELETE ON t1 BEGIN 
      DELETE FROM t1_mirror WHERE a = old.a;
    END;
    CREATE TRIGGER t1_ad AFTER DELETE ON t1 BEGIN 
      DELETE FROM t1_mirror2 WHERE a = old.a;
    END;
  


    INSERT INTO t1 VALUES(randstr(10,10));
  


    UPDATE t1 SET a = randstr(10,10);
  


    DELETE FROM t1;
  
