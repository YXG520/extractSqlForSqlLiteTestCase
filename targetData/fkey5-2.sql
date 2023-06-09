

    INSERT INTO c5 SELECT x FROM c1;
    DELETE FROM c1;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c5);
  


    PRAGMA foreign_key_check(c1);
  


  PRAGMA foreign_key_list(c5);

