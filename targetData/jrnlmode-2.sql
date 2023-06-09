

      ATTACH 'test2.db' AS aux;
      PRAGMA main.journal_mode = persist;
      PRAGMA aux.journal_mode = persist;
      CREATE TABLE abc(a, b, c);
      CREATE TABLE aux.def(d, e, f);
    

      BEGIN;
      INSERT INTO abc VALUES(1, 2, 3);
      INSERT INTO def VALUES(4, 5, 6);
      COMMIT;
    



      SELECT * FROM abc;
    



      SELECT * FROM def;
    
