

    CREATE TABLE test1(id integer primary key, a);
    CREATE TABLE test2(id integer, b);
    INSERT INTO test1 VALUES(1,2);
    INSERT INTO test2 VALUES(1,3);
    CREATE VIEW test AS
      SELECT test1.id, a, b
      FROM test1 JOIN test2 ON test2.id=test1.id;
    SELECT * FROM test;
  


    SELECT * FROM test;
  


    DROP VIEW test;
    CREATE VIEW test AS
      SELECT test1.id, a, b
      FROM test1 JOIN test2 USING(id);
    SELECT * FROM test;
  


    SELECT * FROM test;
  


    DROP VIEW test;
    CREATE VIEW test AS
      SELECT test1.id, a, b
      FROM test1 NATURAL JOIN test2;
    SELECT * FROM test;
  


    SELECT * FROM test;
  
