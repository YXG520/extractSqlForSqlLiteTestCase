

  CREATE TABLE w(a);
  CREATE TABLE x(a);
  CREATE TABLE y(a);
  CREATE TABLE z(a);

  INSERT INTO x(a) VALUES(5);
  INSERT INTO y(a) VALUES(10);

  CREATE TRIGGER t AFTER INSERT ON w BEGIN
    INSERT INTO z
    SELECT (SELECT x.a + y.a FROM y) FROM x;
  END;
  INSERT INTO w VALUES('incorrect');



  SELECT * FROM z;
