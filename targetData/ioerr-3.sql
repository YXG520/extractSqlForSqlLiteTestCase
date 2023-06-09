

    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE abc(a);
    INSERT INTO abc VALUES(randstr(1500,1500)); -- Page 4 is overflow
  

      INSERT INTO abc VALUES(randstr(100,100)); 
    

  CREATE TABLE abc2(a);
  BEGIN;
  DELETE FROM abc WHERE length(a)>100;
  UPDATE abc SET a = randstr(90,90);
  COMMIT;
  CREATE TABLE abc3(a);

