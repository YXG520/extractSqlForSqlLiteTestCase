
 CREATE VIRTUAL TABLE hhh USING zipfile('testdir') 
 
    SELECT * FROM hhh;
    INSERT INTO hhh(name, data) VALUES('1.txt', 'file data');
  
