

    DELETE FROM c10;
    INSERT INTO c3 VALUES(68),(67),(65);
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c3);
  


    INSERT INTO c7 SELECT x FROM c3;
    INSERT INTO c7 VALUES('Alpha'),('alpha'),('foxtrot');
    DELETE FROM c3;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c7);
  


    INSERT INTO c11 SELECT x FROM c7;
    DELETE FROM c7;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c11);
  
