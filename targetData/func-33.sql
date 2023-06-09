
SELECT testdirectonly(15)


  CREATE VIEW v33(y) AS SELECT testdirectonly(15);
  SELECT * FROM v33;



  SELECT * FROM (SELECT testdirectonly(15)) AS v33;



  WITH c(x) AS (SELECT testdirectonly(15))
  SELECT * FROM c;



  WITH c(x) AS (SELECT * FROM v33)
  SELECT * FROM c;



  CREATE TABLE t33a(a,b);
  CREATE TABLE t33b(x,y);
  CREATE TRIGGER r1 AFTER INSERT ON t33a BEGIN
    INSERT INTO t33b(x,y) VALUES(testdirectonly(new.a),new.b);
  END;



  INSERT INTO t33a VALUES(1,2);



  ALTER TABLE t33a RENAME COLUMN a TO aaa;
  SELECT sql FROM sqlite_master WHERE name='r1';

