

    DELETE FROM c11;
    INSERT INTO c4 VALUES(54),(55),(56);
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c4);
  


    INSERT INTO c8 SELECT x FROM c4;
    INSERT INTO c8 VALUES('Alpha'),('ALPHA'),('foxtrot');
    DELETE FROM c4;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c8);
  


    INSERT INTO c12 SELECT x FROM c8;
    DELETE FROM c8;
    PRAGMA foreign_key_check;
  


    PRAGMA foreign_key_check(c12);
  
