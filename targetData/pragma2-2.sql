

      ATTACH 'test2.db' AS aux;
      PRAGMA aux.auto_vacuum=OFF;
      PRAGMA aux.freelist_count;
    


      CREATE TABLE aux.abc(a, b, c);
      PRAGMA aux.freelist_count;
    


      INSERT INTO aux.abc VALUES(1, 2, $::val);
      PRAGMA aux.freelist_count;
    



      DELETE FROM aux.abc;
      PRAGMA aux.freelist_count;
    
