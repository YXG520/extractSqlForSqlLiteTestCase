

    DELETE FROM c9;
    INSERT INTO c2 VALUES(79),(77),(76);
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c2);
  


    INSERT INTO c6 SELECT x FROM c2;
    DELETE FROM c2;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c6);
  


    INSERT INTO c10 SELECT x FROM c6;
    DELETE FROM c6;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c10);
  
