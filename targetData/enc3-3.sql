

      PRAGMA encoding='utf8';
      CREATE TABLE t1(x);
      PRAGMA encoding
    


      ATTACH 'test.db' AS utf16;
      SELECT 1 FROM utf16.sqlite_master LIMIT 1;
    
