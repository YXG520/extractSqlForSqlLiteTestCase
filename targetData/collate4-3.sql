

    CREATE TABLE collate4t1(a PRIMARY KEY COLLATE NOCASE);
  


    INSERT INTO collate4t1 VALUES('abc');
    INSERT INTO collate4t1 VALUES('ABC');
  


    SELECT * FROM collate4t1;
  


    INSERT INTO collate4t1 SELECT upper(a) FROM collate4t1;
  


    INSERT INTO collate4t1 VALUES(1);
    UPDATE collate4t1 SET a = 'abc';
  


    DROP TABLE collate4t1;
    CREATE TABLE collate4t1(a COLLATE NOCASE UNIQUE);
  


    INSERT INTO collate4t1 VALUES('abc');
    INSERT INTO collate4t1 VALUES('ABC');
  


    SELECT * FROM collate4t1;
  


    INSERT INTO collate4t1 SELECT upper(a) FROM collate4t1;
  


    INSERT INTO collate4t1 VALUES(1);
    UPDATE collate4t1 SET a = 'abc';
  


    DROP TABLE collate4t1;
    CREATE TABLE collate4t1(a);
    CREATE UNIQUE INDEX collate4i1 ON collate4t1(a COLLATE NOCASE);
  


    INSERT INTO collate4t1 VALUES('abc');
    INSERT INTO collate4t1 VALUES('ABC');
  


    SELECT * FROM collate4t1;
  


    INSERT INTO collate4t1 SELECT upper(a) FROM collate4t1;
  


    INSERT INTO collate4t1 VALUES(1);
    UPDATE collate4t1 SET a = 'abc';
  


    DROP TABLE collate4t1;
  
