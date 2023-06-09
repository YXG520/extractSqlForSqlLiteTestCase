

    INSERT OR IGNORE INTO c13 SELECT * FROM c12;
    INSERT OR IGNORE INTO C14 SELECT * FROM c12;
    DELETE FROM c12;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c14);
  


    PRAGMA foreign_key_check(c13);
  
