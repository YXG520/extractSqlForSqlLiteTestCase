

    CREATE TABLE tA(a INTEGER PRIMARY KEY, b, c);
    CREATE TRIGGER tA_trigger BEFORE UPDATE ON "tA" BEGIN SELECT 1; END;
    INSERT INTO tA VALUES(1, 2, 3);
  
 UPDATE tA SET a = 'abc' 

 INSERT INTO tA VALUES('abc', 2, 3) 