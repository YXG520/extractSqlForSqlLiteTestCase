

    CREATE TABLE Test (TestID int primary key);
    INSERT INTO Test VALUES (NULL);
    CREATE VIEW viewTest AS SELECT * FROM Test;

    BEGIN;
    CREATE TABLE tempTest (TestID int primary key, Test2 int NULL);
    INSERT INTO tempTest SELECT TestID, 1 FROM Test;
    DROP TABLE Test;
    CREATE TABLE Test(TestID int primary key, Test2 int NULL);
    INSERT INTO Test SELECT * FROM tempTest;
    DROP TABLE tempTest;
    COMMIT;
    VACUUM;
  


    VACUUM;
  
