

    CREATE TABLE sequence(a INTEGER PRIMARY KEY);
    INSERT INTO sequence VALUES(1);
    INSERT INTO sequence VALUES(2);
  

      INSERT INTO sequence SELECT a+(SELECT max(a) FROM sequence) FROM sequence;
    
SELECT count(*) FROM sequence
