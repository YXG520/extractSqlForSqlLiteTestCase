

  CREATE TABLE map_integer (id INT, name);
  INSERT INTO map_integer VALUES(1,'a');
  CREATE TABLE map_text (id TEXT, name);
  INSERT INTO map_text VALUES('4','e');
  CREATE TABLE data (id TEXT, name);
  INSERT INTO data VALUES(1,'abc');
  INSERT INTO data VALUES('4','xyz');
  CREATE VIEW idmap as
      SELECT * FROM map_integer
      UNION SELECT * FROM map_text;
  CREATE TABLE mzed AS SELECT * FROM idmap;



  PRAGMA automatic_index=ON;
  SELECT * FROM data JOIN idmap USING(id);



  SELECT * FROM data JOIN mzed USING(id);



  PRAGMA automatic_index=OFF;
  SELECT * FROM data JOIN idmap USING(id);



  SELECT * FROM data JOIN mzed USING(id);

