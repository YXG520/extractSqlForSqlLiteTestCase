CREATE TABLE '@abc' ( '#xyz' int, '!pqr' text );
INSERT INTO '@abc' VALUES(5,'hello')
SELECT * FROM '@abc'
SELECT * FROM [@abc]
SELECT * FROM `@abc`
SELECT '@abc'.'!pqr', '@abc'.'#xyz'+5 FROM '@abc'
  
SELECT '!pqr', '#xyz'+5 FROM '@abc'
  
SELECT "!pqr", "#xyz"+5 FROM '@abc'
  
SELECT [!pqr], `#xyz`+5 FROM '@abc'
  
SELECT '@abc'.'!pqr', '@abc'.'#xyz'+5 FROM '@abc'
UPDATE '@abc' SET '#xyz'=11
SELECT '@abc'.'!pqr', '@abc'.'#xyz'+5 FROM '@abc'
DROP TABLE '@abc'
CREATE TABLE t1(x, y, z);

1 { CREATE TABLE xyz(a, b, c CHECK (c!="null") ) 
PRAGMA writable_schema = 1;
  CREATE TABLE xyz(a, b, c CHECK (c!="null") );
  CREATE INDEX i2 ON t1(x, y, z||"abc");
  CREATE INDEX i3 ON t1("w"||"");
  CREATE INDEX i4 ON t1(x) WHERE z="w";

INSERT INTO xyz VALUES(1, 2, 3);

INSERT INTO xyz VALUES(1, 2, 'null');

INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 'w');
  SELECT * FROM t1 WHERE z='w';

SELECT sql FROM sqlite_master;

CREATE TABLE t1(a,b);
      CREATE INDEX x1 on t1("b");
      ALTER TABLE t1 DROP COLUMN b;
    
DROP TABLE t1;
    CREATE TABLE t1(a,"b");
    CREATE INDEX x1 on t1("b");
    ALTER TABLE t1 DROP COLUMN b;
  
DROP TABLE t1;
    CREATE TABLE t1(a,'b');
    CREATE INDEX x1 on t1("b");
    ALTER TABLE t1 DROP COLUMN b;
  
DROP TABLE t1;
    CREATE TABLE t1(a,"b");
    CREATE INDEX x1 on t1('b');
    ALTER TABLE t1 DROP COLUMN b;
  
DROP TABLE t1;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX x1 ON t1("a"||"b");
    INSERT INTO t1 VALUES(1,2,3),(1,4,5);
    ALTER TABLE t1 DROP COLUMN b;
  
DROP TABLE t1;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX x1 ON t1("a"||"x");
    INSERT INTO t1 VALUES(1,2,3),(1,4,5);
    ALTER TABLE t1 DROP COLUMN b;
  
