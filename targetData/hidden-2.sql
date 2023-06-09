

    DROP TABLE IF EXISTS x1;
    CREATE TABLE x1(a, b, c);
    INSERT INTO x1 VALUES(1, 2, 3);
  
 DROP VIEW v1 


    SELECT a, b, __hidden__c FROM v1;
  


    SELECT * FROM v1;
  


    CREATE TRIGGER tr1 INSTEAD OF INSERT ON v1 BEGIN
      INSERT INTO x1 VALUES(new.a, new.b, new.__hidden__c);
    END;
  
    INSERT INTO v1 VALUES(4, 5);
    SELECT * FROM x1;
  


    INSERT INTO v1(a, b, __hidden__c) VALUES(7, 8, 9);
    SELECT * FROM x1;
  
