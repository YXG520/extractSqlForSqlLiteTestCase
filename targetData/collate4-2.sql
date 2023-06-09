

    PRAGMA automatic_index=OFF;
    CREATE TABLE collate4t1(a COLLATE NOCASE);
    CREATE TABLE collate4t2(b COLLATE TEXT);

    INSERT INTO collate4t1 VALUES('a');
    INSERT INTO collate4t1 VALUES('A');
    INSERT INTO collate4t1 VALUES('b');
    INSERT INTO collate4t1 VALUES('B');
    INSERT INTO collate4t1 VALUES('c');
    INSERT INTO collate4t1 VALUES('C');
    INSERT INTO collate4t1 VALUES('d');
    INSERT INTO collate4t1 VALUES('D');
    INSERT INTO collate4t1 VALUES('e');
    INSERT INTO collate4t1 VALUES('D');

    INSERT INTO collate4t2 VALUES('A');
    INSERT INTO collate4t2 VALUES('Z');
  

S


    CREATE INDEX collate4i1 ON collate4t1(a);
  

S


    DROP INDEX collate4i1;
    CREATE INDEX collate4i1 ON collate4t1(a COLLATE TEXT);
  

S

S


      DROP INDEX collate4i1;
      CREATE INDEX collate4i1 ON collate4t1(a);
    

S


      DROP INDEX collate4i1;
      CREATE INDEX collate4i1 ON collate4t1(a COLLATE TEXT);
    


    DROP TABLE collate4t1;
    DROP TABLE collate4t2;
  


    CREATE TABLE collate4t1(a COLLATE nocase, b COLLATE text, c);
    CREATE TABLE collate4t2(a COLLATE nocase, b COLLATE text, c COLLATE TEXT);

    INSERT INTO collate4t1 VALUES('0', '0', '0');
    INSERT INTO collate4t1 VALUES('0', '0', '1');
    INSERT INTO collate4t1 VALUES('0', '1', '0');
    INSERT INTO collate4t1 VALUES('0', '1', '1');
    INSERT INTO collate4t1 VALUES('1', '0', '0');
    INSERT INTO collate4t1 VALUES('1', '0', '1');
    INSERT INTO collate4t1 VALUES('1', '1', '0');
    INSERT INTO collate4t1 VALUES('1', '1', '1');
    insert into collate4t2 SELECT * FROM collate4t1;
  

S


    CREATE INDEX collate4i1 ON collate4t1(a, b, c);
  


    DROP INDEX collate4i1;
    CREATE INDEX collate4i1 ON collate4t1(a, b, c COLLATE text);
  


    DROP TABLE collate4t1;
    DROP TABLE collate4t2;
  
