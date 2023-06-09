
 CREATE TABLE A(Id INTEGER, Name TEXT) 
 pragma locking_mode=exclusive 


      BEGIN EXCLUSIVE;
      INSERT INTO a VALUES(1, 'ABCDEFGHIJKLMNOP');
    

COMMIT

