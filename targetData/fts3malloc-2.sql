
 
    DROP TABLE ft1;
    DROP TABLE ft2;
    DROP TABLE ft3;
    DROP TABLE ft4;
    DROP TABLE ft6;
    DROP TABLE ft7;
  
 CREATE VIRTUAL TABLE ft USING fts3(a, b) 
 INSERT INTO ft VALUES($a, $b) 

  1 "SELECT count(*) FROM sqlite_master" {5
