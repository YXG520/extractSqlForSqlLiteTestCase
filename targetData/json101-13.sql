

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(id, json);
  INSERT INTO t1(id,json) VALUES(1,'{"items":[3,5]


  SELECT * FROM t2 CROSS JOIN t1
   WHERE EXISTS(SELECT 1 FROM json_each(t1.json,'$.items') AS Z
                 WHERE Z.value==t2.id);

