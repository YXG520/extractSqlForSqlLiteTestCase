pragma page_size=512;
    pragma auto_vacuum=2;
    pragma cache_size=16;
  
CREATE TABLE A(Id INTEGER, Name TEXT) 
pragma locking_mode=exclusive 
BEGIN EXCLUSIVE;
      INSERT INTO a VALUES(1, 'ABCDEFGHIJKLMNOP');
    
COMMIT