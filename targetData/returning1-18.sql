

  CREATE TABLE v0(c1 INT);
  CREATE VIEW view_2(c1) AS SELECT CASE WHEN c1 COLLATE TRUE THEN TRUE ELSE TRUE END FROM v0;
  CREATE TRIGGER x1 INSTEAD OF INSERT ON view_2 BEGIN SELECT true; END;



  INSERT INTO view_2 DEFAULT VALUES RETURNING *;

