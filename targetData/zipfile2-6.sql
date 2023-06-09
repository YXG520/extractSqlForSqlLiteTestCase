

  CREATE VIRTUAL TABLE temp.zip USING zipfile('test.zip'); 
  INSERT INTO temp.zip (name,data) VALUES ('test1','test'); 
  INSERT INTO temp.zip (name,data) VALUES ('test2','test'); 



  UPDATE temp.zip SET name='test1' WHERE name='test2'



  DROP TABLE zip;
  CREATE VIRTUAL TABLE temp.zip USING zipfile('test.zip'); 
  INSERT INTO temp.zip (name,data) VALUES ('test','test'); 
  UPDATE  temp.zip set name=name||'new' where name='test'; 
  INSERT INTO temp.zip (name,data) VALUES ('test','test'); 
  UPDATE  temp.zip set name=name||'new' where name='test'; 



  INSERT INTO temp.zip (name,data) VALUES ('test1','test'); 
  INSERT INTO temp.zip (name,data) VALUES ('test2','test'); 
  UPDATE OR REPLACE zip SET name='test2' WHERE name='test1';
  SELECT name FROM zip;

