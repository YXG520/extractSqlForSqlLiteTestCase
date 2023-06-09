

  CREATE TABLE data(x, y, z);
  CREATE VIEW t1 AS SELECT * FROM data;
  CREATE TRIGGER t1_insert INSTEAD OF INSERT ON t1 BEGIN
    INSERT INTO data VALUES(new.x, new.y, new.z);
  END;
  CREATE TRIGGER t1_update INSTEAD OF UPDATE ON t1 BEGIN
    INSERT INTO log VALUES(old.z || '->' || new.z);
  END;

  CREATE TABLE log(t TEXT);

  INSERT INTO t1 VALUES(1, 'i',   'one');
  INSERT INTO t1 VALUES(2, 'ii',  'two');
  INSERT INTO t1 VALUES(3, 'iii', 'three');
  INSERT INTO t1 VALUES(4, 'iv',  'four');



  WITH input(k, v) AS (
      VALUES(3, 'thirty'), (1, 'ten')
  )
  UPDATE t1 SET z=v FROM input WHERE x=k;


  2 { 
    CREATE TABLE x1(a INT PRIMARY KEY, b, c) WITHOUT ROWID;
  
