CREATE TABLE abc(a, b, c);
    CREATE VIRTUAL TABLE abc2 USING echo(abc);
  
INSERT INTO abc2 VALUES(1, 2, 3);
  
INSERT INTO log VALUES('xSync');
CREATE TABLE log(msg);
    INSERT INTO abc2 VALUES(4, 5, 6);
    SELECT * FROM log;
  
INSERT INTO abc2 VALUES(4, 5, 6);
    SELECT * FROM log;
  
INSERT INTO abc2 VALUES(4, 5, 6);
    SELECT * FROM log;
  
CREATE TABLE newtab(d, e, f); 
INSERT INTO abc2 VALUES(1, 2, 3);
    SELECT name FROM sqlite_master ORDER BY name;
  
DROP TABLE newtab 
INSERT INTO abc2 VALUES(1, 2, 3);
    SELECT name FROM sqlite_master ORDER BY name;
  
DROP TABLE newtab
ATTACH 'test2.db' AS db2;
      CREATE TABLE db2.stuff(description, shape, color);
    
INSERT INTO db2.stuff VALUES('abc', 'square', 'green'); 
INSERT INTO abc2 VALUES(1, 2, 3);
      SELECT * from stuff;
    
INSERT INTO log VALUES('hello') 
#     INSERT INTO abc2 VALUES(1, 2, 3);
#   
CREATE TABLE def(d, e, f);
    CREATE VIRTUAL TABLE def2 USING echo(def);
  
INSERT INTO def2 VALUES(1, 2, 3) 
INSERT INTO abc2 VALUES(1, 2, 3);
  
CREATE VIRTUAL TABLE def3 USING echo(def) 
INSERT INTO abc2 VALUES(1, 2, 3);
  
DROP TABLE def2 
INSERT INTO abc2 VALUES(1, 2, 3);
    SELECT name FROM sqlite_master ORDER BY name;
  
