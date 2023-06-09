

  CREATE TABLE t1(id INTEGER PRIMARY KEY, a TEXT);
  INSERT INTO t1(id, a) VALUES(1, '日本語');
  SELECT a, hex(a), length(a) FROM t1;



  SELECT * FROM t1 WHERE a='日本語';



  SELECT * FROM t1 WHERE a LIKE '日本語';



  SELECT * FROM t1 wHERE a REGEXP '日本語';

