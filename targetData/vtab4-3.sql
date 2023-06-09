

    INSERT INTO techo VALUES(1, 2, 3);
  



    BEGIN;
    INSERT INTO techo SELECT * FROM secho;
    DELETE FROM secho;
    COMMIT;
  
