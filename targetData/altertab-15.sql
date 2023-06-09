

  CREATE TABLE t1(a integer NOT NULL PRIMARY KEY);
  CREATE VIEW v1 AS SELECT a FROM t1;
  CREATE TRIGGER tr1 INSTEAD OF INSERT ON v1 BEGIN 
    UPDATE t1 SET a = NEW.a;
  END;
  CREATE TRIGGER tr2 INSTEAD OF INSERT ON v1 BEGIN 
    SELECT new.a;
  END;
  CREATE TABLE t2 (b);



  INSERT INTO v1 VALUES(1);
  ALTER TABLE t2 RENAME TO t3;



  CREATE TABLE x(f1 integer NOT NULL);
  CREATE VIEW y AS SELECT f1 AS f1 FROM x;
  CREATE TRIGGER t INSTEAD OF UPDATE OF f1 ON y BEGIN 
    UPDATE x SET f1 = NEW.f1; 
  END;
  CREATE TABLE z (f1 integer NOT NULL PRIMARY KEY);
  ALTER TABLE z RENAME TO z2;



  INSERT INTO x VALUES(1), (2), (3);
  ALTER TABLE x RENAME f1 TO f2;
  SELECT * FROM x;



  UPDATE y SET f1 = 'x' WHERE f1 = 1;
  SELECT * FROM x;



  SELECT sql FROM sqlite_master WHERE name = 'y';


          execsql $::vtab_connect_sql
        