

    CREATE TABLE t1(a,b);
    CREATE TABLE log(x UNIQUE, y);
    CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
      UPDATE log SET y=y+1 WHERE x=new.a;
      INSERT OR IGNORE INTO log VALUES(new.a, 1);
    END;
    INSERT INTO t1 VALUES('hello','world');
    INSERT INTO t1 VALUES(5,10);
    SELECT * FROM log ORDER BY x;
  


    INSERT INTO t1 SELECT a, b+10 FROM t1;
    SELECT * FROM log ORDER BY x;
  


    CREATE TABLE log2(x PRIMARY KEY,y);
    CREATE TRIGGER r2 BEFORE INSERT ON t1 BEGIN
      UPDATE log2 SET y=y+1 WHERE x=new.b;
      INSERT OR IGNORE INTO log2 VALUES(new.b,1);
    END;
    INSERT INTO t1 VALUES(453,'hi');
    SELECT * FROM log ORDER BY x;
  


    SELECT * FROM log2 ORDER BY x;
  


      INSERT INTO t1 SELECT * FROM t1;
      SELECT 'a:', x, y FROM log UNION ALL 
          SELECT 'b:', x, y FROM log2 ORDER BY x;
    


      SELECT 'a:', x, y FROM log UNION ALL 
          SELECT 'b:', x, y FROM log2 ORDER BY x, y;
    


      INSERT INTO t1(a) VALUES('xyz');
      SELECT * FROM log ORDER BY x;
    
