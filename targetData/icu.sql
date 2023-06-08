CREATE TABLE test1(i1 int, i2 int, r1 real, r2 real, t1 text, t2 text)
INSERT INTO test1 VALUES(1,2,1.1,2.2,'hello','world')
SELECT upper(char(0xfb04,0xfb04,0xfb04,0xfb04));
  
CREATE TABLE fruit(name);
    INSERT INTO fruit VALUES('plum');
    INSERT INTO fruit VALUES('cherry');
    INSERT INTO fruit VALUES('apricot');
    INSERT INTO fruit VALUES('peach');
    INSERT INTO fruit VALUES('chokecherry');
    INSERT INTO fruit VALUES('yamot');
  
SELECT icu_load_collation('en_US', 'AmericanEnglish');
    SELECT icu_load_collation('lt_LT', 'Lithuanian');
  
SELECT name FROM fruit ORDER BY name COLLATE AmericanEnglish ASC;
  
SELECT name FROM fruit ORDER BY name COLLATE Lithuanian ASC;
  
0 1
SELECT regexp('a[abc]c.*') 
  
SELECT regexp('a[abc]c.*', 'abc', 'c') 
  
SELECT 'abc' REGEXP 'a[abc]c.*'
  
incomplete input
near ",": syntax error
SELECT upper(char(0xfb04,0xdf,0xfb04,0xe8,0xfb04));
  
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

