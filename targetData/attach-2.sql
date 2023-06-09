

    CREATE TABLE tx(x1,x2,y1,y2);
    CREATE TRIGGER r1 AFTER UPDATE ON t2 FOR EACH ROW BEGIN
      INSERT INTO tx(x1,x2,y1,y2) VALUES(OLD.x,NEW.x,OLD.y,NEW.y);
    END;
    SELECT * FROM tx;
  


    UPDATE t2 SET x=x+10;
    SELECT * FROM tx;
  


    CREATE TABLE tx(x1,x2,y1,y2);
    SELECT * FROM tx;
  


    ATTACH 'test2.db' AS db2;
  


    UPDATE db2.t2 SET x=x+10;
    SELECT * FROM db2.tx;
  


    SELECT * FROM main.tx;
  


    SELECT type, name, tbl_name FROM db2.sqlite_master;
  




    CREATE INDEX i2 ON t2(x);
    SELECT * FROM t2 WHERE x>5;
  


    SELECT type, name, tbl_name FROM sqlite_master;
  
 
#    SELECT * FROM t2 WHERE x>5;
#  




    SELECT * FROM t2 WHERE x>5;
  


    SELECT type, name, tbl_name FROM sqlite_master;
  


    SELECT type, name, tbl_name FROM db2.sqlite_master;
  


    ATTACH 'test2.db' AS db2;
    SELECT type, name, tbl_name FROM db2.sqlite_master;
  
