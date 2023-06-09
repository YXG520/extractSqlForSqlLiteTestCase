

      CREATE TABLE t4(c DEFAULT 'abc');
      PRAGMA table_info(t4);
    


      INSERT INTO t4 DEFAULT VALUES;
      PRAGMA table_info(t4);
    
