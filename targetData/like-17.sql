

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(id INTEGER PRIMARY KEY, x TEXT);
  INSERT INTO t1 VALUES
    (1,'abcde'),
    (2,'abc_'),
    (3,'abc__'),
    (4,'abc%'),
    (5,'abc%%');
  SELECT id FROM t1 WHERE x LIKE 'abc%%' ESCAPE '%';



  SELECT id FROM t1 WHERE x LIKE 'abc__' ESCAPE '_';



  SELECT 'x' LIKE '%' ESCAPE '_';

