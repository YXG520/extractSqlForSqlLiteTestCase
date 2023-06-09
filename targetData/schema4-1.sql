

  CREATE TABLE log(x, a, b);
  CREATE TABLE tbl(a, b);

  CREATE TABLE t1(a, b);
  CREATE VIEW v1 AS SELECT * FROM tbl;
  CREATE INDEX i1 ON tbl(a);



  CREATE TRIGGER t1 AFTER INSERT ON tbl BEGIN
    INSERT INTO log VALUES('after insert', new.a, new.b);
  END;
  CREATE TRIGGER v1 AFTER UPDATE ON tbl BEGIN
    INSERT INTO log VALUES('after update', new.a, new.b);
  END;
  CREATE TRIGGER i1 AFTER DELETE ON tbl BEGIN
    INSERT INTO log VALUES('after delete', old.a, old.b);
  END;



  INSERT INTO tbl VALUES(1, 2);
  UPDATE tbl SET b=a+b, a=a+1;
  DELETE FROM tbl;

  SELECT x, a, b FROM log;



  DELETE FROM log;

  DROP INDEX i1;
  DROP TABLE t1;
  DROP VIEW v1;

  INSERT INTO tbl VALUES(1, 2);
  UPDATE tbl SET b=a+b, a=a+1;
  DELETE FROM tbl;

  SELECT x, a, b FROM log;



  DELETE FROM log;
  INSERT INTO tbl VALUES(1, 2);
  UPDATE tbl SET b=a+b, a=a+1;
  DELETE FROM tbl;
  SELECT x, a, b FROM log;



  CREATE TABLE t1(a, b);
  CREATE VIEW v1 AS SELECT * FROM tbl;
  CREATE INDEX i1 ON tbl(a);



    DROP TABLE t1;
    CREATE VIRTUAL TABLE t1 USING fts3;
  


    DELETE FROM log;
    DROP TABLE t1;
    INSERT INTO tbl VALUES(1, 2);
    UPDATE tbl SET b=a+b, a=a+1;
    DELETE FROM tbl;
    SELECT x, a, b FROM log;
  
