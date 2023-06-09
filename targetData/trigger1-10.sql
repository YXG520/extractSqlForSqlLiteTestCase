

      ATTACH 'test2.db' AS aux;
    


      CREATE TABLE main.t4(a, b, c);
      CREATE TABLE temp.t4(a, b, c);
      CREATE TABLE aux.t4(a, b, c);
      CREATE TABLE insert_log(db, a, b, c);
    


      CREATE TEMP TRIGGER trig1 AFTER INSERT ON main.t4 BEGIN 
        INSERT INTO insert_log VALUES('main', new.a, new.b, new.c);
      END;
      CREATE TEMP TRIGGER trig2 AFTER INSERT ON temp.t4 BEGIN 
        INSERT INTO insert_log VALUES('temp', new.a, new.b, new.c);
      END;
      CREATE TEMP TRIGGER trig3 AFTER INSERT ON aux.t4 BEGIN 
        INSERT INTO insert_log VALUES('aux', new.a, new.b, new.c);
      END;
    


      INSERT INTO main.t4 VALUES(1, 2, 3);
      INSERT INTO temp.t4 VALUES(4, 5, 6);
      INSERT INTO aux.t4  VALUES(7, 8, 9);
    


      SELECT * FROM insert_log;
    


      BEGIN;
      INSERT INTO main.t4 VALUES(1, 2, 3);
      INSERT INTO temp.t4 VALUES(4, 5, 6);
      INSERT INTO aux.t4  VALUES(7, 8, 9);
      ROLLBACK;
    


      SELECT * FROM insert_log;
    


      DELETE FROM insert_log;
      INSERT INTO main.t4 VALUES(11, 12, 13);
      INSERT INTO temp.t4 VALUES(14, 15, 16);
      INSERT INTO aux.t4  VALUES(17, 18, 19);
    


      SELECT * FROM insert_log;
    



      INSERT INTO main.t4 VALUES(21, 22, 23);
      INSERT INTO temp.t4 VALUES(24, 25, 26);
      INSERT INTO aux.t4  VALUES(27, 28, 29);
    


      SELECT * FROM insert_log;
    
