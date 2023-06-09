

    CREATE TABLE t3(a, b);
    CREATE TRIGGER t3i AFTER INSERT ON t3 BEGIN
      DELETE FROM t3 WHERE rowid = new.rowid;
    END;
    CREATE TRIGGER t3d AFTER DELETE ON t3 BEGIN
      INSERT INTO t3 VALUES(old.a, old.b);
    END;
  

 INSERT INTO t3 VALUES(0,0) 

 SELECT * FROM t3 


    CREATE TABLE t3b(x);
    CREATE TRIGGER t3bi AFTER INSERT ON t3b WHEN new.x<[expr $SQLITE_MAX_TRIGGER_DEPTH * 2] BEGIN
      INSERT INTO t3b VALUES(new.x+1);
    END;
  

    INSERT INTO t3b VALUES(1);
  

SELECT * FROM t3b


    INSERT INTO t3b VALUES([expr $SQLITE_MAX_TRIGGER_DEPTH + 1]);
  

SELECT count(*), max(x), min(x) FROM t3b


    DELETE FROM t3b;
    INSERT INTO t3b VALUES([expr $SQLITE_MAX_TRIGGER_DEPTH - 1]);
  

SELECT count(*), max(x), min(x) FROM t3b


    INSERT INTO t3b VALUES([expr ($SQLITE_MAX_TRIGGER_DEPTH * 2) - ($SQLITE_MAX_TRIGGER_DEPTH / 10) + 1]);
  

SELECT count(*), max(x), min(x) FROM t3b


    DELETE FROM t3b;
    INSERT INTO t3b VALUES([expr ($SQLITE_MAX_TRIGGER_DEPTH * 2) - ($SQLITE_MAX_TRIGGER_DEPTH / 10)]);
  

SELECT count(*), max(x), min(x) FROM t3b


    INSERT INTO t3b VALUES([expr $SQLITE_MAX_TRIGGER_DEPTH * 2]);
  

SELECT count(*), max(x), min(x) FROM t3b


    DELETE FROM t3b;
    INSERT INTO t3b VALUES([expr ($SQLITE_MAX_TRIGGER_DEPTH * 2) - 1]);
  

SELECT count(*), max(x), min(x) FROM t3b
