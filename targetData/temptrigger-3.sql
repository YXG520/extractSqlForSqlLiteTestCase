
 CREATE TABLE t2(a, b) 

    ATTACH 'test2.db' AS aux;
    CREATE TEMP TABLE tt2(a, b);
    CREATE TEMP TRIGGER tr2 AFTER INSERT ON aux.t2 BEGIN
      INSERT INTO tt2 VALUES(new.a, new.b);
    END;
  

 
    INSERT INTO aux.t2 VALUES(1, 2);
    SELECT * FROM aux.t2;
  

 SELECT * FROM tt2 

 CREATE TABLE t3(a, b) 
 
    INSERT INTO aux.t2 VALUES(3, 4);
    SELECT * FROM aux.t2;
  

 SELECT * FROM tt2 

 DROP TRIGGER tr2 
