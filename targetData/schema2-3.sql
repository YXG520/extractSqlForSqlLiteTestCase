

      CREATE TABLE abc(a, b, c);
    
SELECT * FROM sqlite_master

      CREATE TRIGGER abc_trig AFTER INSERT ON abc BEGIN
        SELECT 1, 2, 3;
      END;
    


SELECT * FROM sqlite_master

      DROP TRIGGER abc_trig;
    

