

    SELECT * from t4;
  


    BEGIN;
    INSERT INTO t4 VALUES(2,4);
    INSERT INTO t4 VALUES(3,6);
    INSERT INTO t4 VALUES(4,8);
    INSERT INTO t4 VALUES(5,10);
    INSERT INTO t4 VALUES(6,12);
    INSERT INTO t4 VALUES(7,14);
    INSERT INTO t4 VALUES(8,16);
    INSERT INTO t4 VALUES(9,18);
    INSERT INTO t4 VALUES(10,20);
    COMMIT;
  


    SELECT count(*) FROM t4;
  


      BEGIN;
      INSERT INTO t4 SELECT x+(SELECT max(x) FROM t4),y FROM t4;
      INSERT INTO t4 SELECT x+(SELECT max(x) FROM t4),y FROM t4;
      INSERT INTO t4 SELECT x+(SELECT max(x) FROM t4),y FROM t4;
      INSERT INTO t4 SELECT x+(SELECT max(x) FROM t4),y FROM t4;
      COMMIT;
      SELECT count(*) FROM t4;
    
SELECT max(x) FROM t4

      BEGIN;
      INSERT INTO t4 SELECT x+max_x_t4() ,y FROM t4;
      INSERT INTO t4 SELECT x+max_x_t4() ,y FROM t4;
      INSERT INTO t4 SELECT x+max_x_t4() ,y FROM t4;
      INSERT INTO t4 SELECT x+max_x_t4() ,y FROM t4;
      COMMIT;
      SELECT count(*) FROM t4;
    


    BEGIN;
    UPDATE t4 SET y='lots of data for the row where x=' || x
                     || ' and y=' || y || ' - even more data to fill space';
    COMMIT;
    SELECT count(*) FROM t4;
  


      BEGIN;
      INSERT INTO t4 SELECT x+(SELECT max(x)+1 FROM t4),y FROM t4;
      SELECT count(*) from t4;
      ROLLBACK;
    

      BEGIN;
      INSERT INTO t4 SELECT x+max_x_t4()+1,y FROM t4;
      SELECT count(*) from t4;
      ROLLBACK;
    


    SELECT count(*) FROM t4;
  


    BEGIN;
    DELETE FROM t4 WHERE x!=123;
    SELECT count(*) FROM t4;
    ROLLBACK;
  

