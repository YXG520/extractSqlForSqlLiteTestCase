

  CREATE TABLE x4_rules(a, b, c, d);
  INSERT INTO x4_rules VALUES(0, 'a', 'b', 10);
  INSERT INTO x4_rules VALUES(0, 'a', 'c', 11);
  INSERT INTO x4_rules VALUES(0, 'bx', 'zz', 20);
  INSERT INTO x4_rules VALUES(0, 'cx', 'yy', 15);
  INSERT INTO x4_rules VALUES(0, 'zz', '!!', 50);
  CREATE VIRTUAL TABLE x4 USING fuzzer(x4_rules);



  SELECT word, distance FROM x4 WHERE word MATCH 'ax';

