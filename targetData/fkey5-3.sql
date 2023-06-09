

    INSERT INTO c9 SELECT x FROM c5;
    DELETE FROM c5;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c9);
  


    PRAGMA foreign_key_check(c5);
  
