

      CREATE TABLE abc3(a, b);
      CREATE TABLE blog(o, n);
      CREATE TRIGGER abc3_t AFTER UPDATE OF b ON abc3 BEGIN
        INSERT INTO blog VALUES(old.b, new.b);
      END;
    


      INSERT INTO abc3 VALUES(1, 4);
      UPDATE abc3 SET b = 2 WHERE b = 4;
      SELECT * FROM blog;
    


      INSERT INTO abc3 VALUES(3, 4);
      INSERT INTO abc3 VALUES(5, 6);
    

      SELECT * FROM abc3;
    


      UPDATE abc3 SET b = b*2 WHERE a<4;
      SELECT * FROM abc3;
    


      SELECT * FROM blog;
    


      CREATE TABLE clog(o, n);
      CREATE TRIGGER abc3_t2 AFTER UPDATE OF c ON abc3 BEGIN
        INSERT INTO clog VALUES(old.c, new.c);
      END;
      UPDATE abc3 SET c = a*2;
      SELECT * FROM clog;
    
 CREATE TABLE abc3(a, b); 