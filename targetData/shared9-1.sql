

    ATTACH 'test.db2' AS 'fred';
    CREATE TABLE fred.t1(a, b, c);
    CREATE VIEW fred.v1 AS SELECT * FROM t1;

    CREATE TABLE fred.t2(a, b);
    CREATE TABLE fred.t3(a, b);
    CREATE TRIGGER fred.trig AFTER INSERT ON t2 BEGIN
      DELETE FROM t3;
      INSERT INTO t3 SELECT * FROM t2;
    END;
    INSERT INTO t2 VALUES(1, 2);
    SELECT * FROM t3;
  








      CREATE VIRTUAL TABLE fred.t4 USING fts4;
      INSERT INTO t4 VALUES('hello world');
    


      INSERT INTO t4 VALUES('shared cache');
      SELECT * FROM t4 WHERE t4 MATCH 'hello';
    


      SELECT * FROM t4 WHERE t4 MATCH 'c*';
    
