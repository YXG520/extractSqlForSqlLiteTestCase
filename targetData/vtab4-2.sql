

    BEGIN;
    INSERT INTO techo VALUES(1, 2, 3);
    INSERT INTO techo VALUES(4, 5, 6);
    INSERT INTO techo VALUES(7, 8, 9);
    COMMIT;
  


    CREATE TABLE sreal(a, b, c UNIQUE);
    CREATE VIRTUAL TABLE secho USING echo(sreal);
  

    BEGIN;
    INSERT INTO secho SELECT * FROM techo;
    DELETE FROM techo;
    COMMIT;
  


    SELECT * FROM secho;
  


    SELECT * FROM techo;
  


    BEGIN;
    INSERT INTO techo SELECT * FROM secho;
    DELETE FROM secho;
    ROLLBACK;
  


    SELECT * FROM secho;
  


    SELECT * FROM techo;
  
