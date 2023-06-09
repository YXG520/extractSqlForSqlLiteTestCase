

    CREATE TABLE collate4t1(a COLLATE TEXT);
    INSERT INTO collate4t1 VALUES('2');
    INSERT INTO collate4t1 VALUES('10');
    INSERT INTO collate4t1 VALUES('20');
    INSERT INTO collate4t1 VALUES('104');
  

S

S


    CREATE INDEX collate4i1 ON collate4t1(a);
  

S


    DROP INDEX collate4i1;
    CREATE INDEX collate4i1 ON collate4t1(a COLLATE NUMERIC);
  

S


    DROP TABLE collate4t1;
  


    CREATE TABLE collate4t1(a COLLATE TEXT, b COLLATE NUMERIC);
    INSERT INTO collate4t1 VALUES('11', '101');
    INSERT INTO collate4t1 VALUES('101', '11')
  


    SELECT max(a, b) FROM collate4t1;
  


    SELECT max(b, a) FROM collate4t1;
  


    SELECT max(a, '101') FROM collate4t1;
  


    SELECT max('101', a) FROM collate4t1;
  


    SELECT max(b, '101') FROM collate4t1;
  


    SELECT max('101', b) FROM collate4t1;
  


    DROP TABLE collate4t1;
  
