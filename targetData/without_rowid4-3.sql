

    UPDATE tbl SET b = 1, c = 10; -- 2
    UPDATE tbl SET b = 10; -- 0
    UPDATE tbl SET d = 4 WHERE a = 0; --1
    UPDATE tbl SET a = 4, b = 10; --0
    SELECT * FROM log;
  

  DROP TABLE tbl;
  DROP TABLE log;


  CREATE TABLE tbl (a, b, c, d);
  CREATE TABLE log (a);
  INSERT INTO log VALUES (0);

CREATE TRIGGER $trig BEGIN UPDATE log set a = a + 1; END;

 

    INSERT INTO tbl VALUES(0, 0, 0, 0);     -- 1 (ifcapable subquery)
    SELECT * FROM log;
    UPDATE log SET a = 0;

    INSERT INTO tbl VALUES(0, 0, 0, 0);     -- 0
    SELECT * FROM log;
    UPDATE log SET a = 0;

    INSERT INTO tbl VALUES(200, 0, 0, 0);     -- 1
    SELECT * FROM log;
    UPDATE log SET a = 0;
  

  DROP TABLE tbl;
  DROP TABLE log;


  CREATE TABLE tblA(a, b, PRIMARY KEY(a,b)) WITHOUT rowid;
  CREATE TABLE tblB(a, b, PRIMARY KEY(a,b)) WITHOUT rowid;
  CREATE TABLE tblC(a, b, PRIMARY KEY(a,b)) WITHOUT rowid;

  CREATE TRIGGER tr1 BEFORE INSERT ON tblA BEGIN
    INSERT INTO tblB values(new.a, new.b);
  END;

  CREATE TRIGGER tr2 BEFORE INSERT ON tblB BEGIN
    INSERT INTO tblC values(new.a, new.b);
  END;

