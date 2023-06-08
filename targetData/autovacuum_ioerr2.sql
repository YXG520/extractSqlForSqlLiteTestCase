PRAGMA auto_vacuum = 1;
  CREATE TABLE abc(a);
  INSERT INTO abc VALUES(randstr(1500,1500));

CREATE TABLE abc2(a);
  BEGIN;
  DELETE FROM abc;
  INSERT INTO abc VALUES(randstr(1500,1500));
  CREATE TABLE abc3(a);
  COMMIT;

PRAGMA auto_vacuum = 1;
    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE abc(a);
    INSERT INTO abc VALUES(randstr(1100,1100)); -- Page 4 is overflow
    INSERT INTO abc VALUES(randstr(1100,1100)); -- Page 5 is overflow
  
INSERT INTO abc VALUES(randstr(100,100)); 
    
BEGIN;
  DELETE FROM abc WHERE length(a)>100;
  UPDATE abc SET a = randstr(90,90);
  CREATE TABLE abc3(a);
  COMMIT;

PRAGMA auto_vacuum = 1;
  CREATE TABLE abc(a);
  CREATE TABLE abc2(b);

BEGIN;
  INSERT INTO abc2 VALUES(10);
  DROP TABLE abc;
  COMMIT;
  DROP TABLE abc2;

PRAGMA auto_vacuum = 1;
        BEGIN;
        CREATE TABLE abc(a);
        INSERT INTO abc VALUES(randstr(1100,1100)); -- Page 4 is overflow
        INSERT INTO abc VALUES(randstr(1100,1100)); -- Page 5 is overflow
      
INSERT INTO abc VALUES(randstr(100,100)); 
        
COMMIT;
        PRAGMA cache_size = 10;
      
PRAGMA cache_size = 10;
    
BEGIN;
    DELETE FROM abc WHERE oid < 3;
    UPDATE abc SET a = randstr(100,100) WHERE oid > 2300;
    UPDATE abc SET a = randstr(1100,1100) WHERE oid = 
        (select max(oid) from abc);
    COMMIT;
  
PRAGMA auto_vacuum = 1;
  CREATE TABLE abc(a);
  INSERT INTO abc VALUES(randstr(1500,1500));

CREATE TABLE abc2(a);
  BEGIN;
  DELETE FROM abc;
  INSERT INTO abc VALUES(randstr(1500,1500));
  CREATE TABLE abc3(a);
  COMMIT;

