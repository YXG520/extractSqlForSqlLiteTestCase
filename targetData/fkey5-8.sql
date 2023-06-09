

    DELETE FROM c13;
    DELETE FROM c14;
    INSERT INTO c19 VALUES('alpha','abc');
    PRAGMA foreign_key_check(c19);
  


    DELETE FROM c19;
    INSERT INTO c19 VALUES('Alpha','abc');
    PRAGMA foreign_key_check(c19);
  


    INSERT INTO c20 VALUES('Alpha','abc');
    PRAGMA foreign_key_check(c20);
  


    DELETE FROM c20;
    INSERT INTO c20 VALUES('abc','Alpha');
    PRAGMA foreign_key_check(c20);
  


    INSERT INTO c21 VALUES('alpha','abc    ');
    PRAGMA foreign_key_check(c21);
  


    DELETE FROM c21;
    INSERT INTO c19 VALUES('Alpha','abc');
    PRAGMA foreign_key_check(c21);
  


    INSERT INTO c22 VALUES('Alpha','abc');
    PRAGMA foreign_key_check(c22);
  


    DELETE FROM c22;
    INSERT INTO c22 VALUES('abc  ','ALPHA');
    PRAGMA foreign_key_check(c22);
  
