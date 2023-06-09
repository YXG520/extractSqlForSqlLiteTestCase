

  CREATE TABLE t1(a, b, c);
  CREATE TABLE x1(x, y, z);
  CREATE TABLE x2(x, y, z);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO x1 VALUES(
        new.a REGEXP 'abc',
        new.b REGEXP 'abc',
        new.c REGEXP 'abc'
    );
  END;

  CREATE TRIGGER tr2 AFTER INSERT ON t1 BEGIN
    INSERT INTO x2 VALUES(
        new.a REGEXP 'def',
        new.b REGEXP 'def',
        new.c REGEXP 'def'
    );
  END;

  INSERT INTO t1 VALUES('abc', 'def', 'abc');
  SELECT * FROM t1;


 SELECT * FROM x1 
1 0 1

 SELECT * FROM x2 
0 1 0

} {
  error "SQL error!"

