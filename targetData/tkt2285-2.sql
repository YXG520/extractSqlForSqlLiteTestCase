

      BEGIN;
      CREATE TEMP TABLE abc(a, b, c);
      ROLLBACK;
    


      SELECT * FROM sqlite_temp_master;
    
