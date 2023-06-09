
DETACH db2

    CREATE TABLE t3(x,y);
    CREATE UNIQUE INDEX t3i1 ON t3(x);
    INSERT INTO t3 VALUES(1,2);
    SELECT * FROM t3;
  


    CREATE TABLE t3(a,b);
    CREATE UNIQUE INDEX t3i1b ON t3(a);
    INSERT INTO t3 VALUES(9,10);
    SELECT * FROM t3;
  


    ATTACH DATABASE 'test2.db' AS db2;
    SELECT * FROM db2.t3;
  


    SELECT * FROM main.t3;
  


    INSERT INTO db2.t3 VALUES(9,10);
    SELECT * FROM db2.t3;
  

  DETACH db2;



      CREATE TABLE t4(x);
      CREATE TRIGGER t3r3 AFTER INSERT ON t3 BEGIN
        INSERT INTO t4 VALUES('db2.' || NEW.x);
      END;
      INSERT INTO t3 VALUES(6,7);
      SELECT * FROM t4;
    


      CREATE TABLE t4(y);
      CREATE TRIGGER t3r3 AFTER INSERT ON t3 BEGIN
        INSERT INTO t4 VALUES('main.' || NEW.a);
      END;
      INSERT INTO main.t3 VALUES(11,12);
      SELECT * FROM main.t4;
    


    ATTACH DATABASE 'test2.db' AS db2;
    INSERT INTO db2.t3 VALUES(13,14);
    SELECT * FROM db2.t4 UNION ALL SELECT * FROM main.t4;
  

INSERT INTO main.t4 VALUES('main.15')

    INSERT INTO main.t3 VALUES(15,16);
    SELECT * FROM db2.t4 UNION ALL SELECT * FROM main.t4;
  
INSERT INTO main.t4 VALUES('main.15')

    ATTACH DATABASE 'test2.db' AS db2;
    INSERT INTO db2.t3 VALUES(13,14);
    INSERT INTO main.t3 VALUES(15,16);
  


    DETACH DATABASE db2;
  

    CREATE VIEW v3 AS SELECT x*100+y FROM t3;
    SELECT * FROM v3;
  


    CREATE VIEW v3 AS SELECT a*100+b FROM t3;
    SELECT * FROM v3;
  


    ATTACH DATABASE 'test2.db' AS db2;
    SELECT * FROM db2.v3;
  


    SELECT * FROM main.v3;
  
