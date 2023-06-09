

    CREATE TABLE collate4t1(a COLLATE NOCASE, b COLLATE TEXT);
    INSERT INTO collate4t1 VALUES( 'a', 'a' );
    INSERT INTO collate4t1 VALUES( 'b', 'b' );
    INSERT INTO collate4t1 VALUES( NULL, NULL );
    INSERT INTO collate4t1 VALUES( 'B', 'B' );
    INSERT INTO collate4t1 VALUES( 'A', 'A' );
    CREATE INDEX collate4i1 ON collate4t1(a);
    CREATE INDEX collate4i2 ON collate4t1(b);
  








    CREATE TABLE collate4t2(
      a PRIMARY KEY COLLATE NOCASE, 
      b UNIQUE COLLATE TEXT
    );
    INSERT INTO collate4t2 VALUES( 'a', 'a' );
    INSERT INTO collate4t2 VALUES( NULL, NULL );
    INSERT INTO collate4t2 VALUES( 'B', 'B' );
  








    CREATE TABLE collate4t3(
      b COLLATE TEXT,  
      a COLLATE NOCASE, 
      UNIQUE(a), PRIMARY KEY(b)
    );
    INSERT INTO collate4t3 VALUES( 'a', 'a' );
    INSERT INTO collate4t3 VALUES( NULL, NULL );
    INSERT INTO collate4t3 VALUES( 'B', 'B' );
  








    CREATE TABLE collate4t4(a COLLATE NOCASE, b COLLATE TEXT);
    INSERT INTO collate4t4 VALUES( 'a', 'a' );
    INSERT INTO collate4t4 VALUES( 'b', 'b' );
    INSERT INTO collate4t4 VALUES( NULL, NULL );
    INSERT INTO collate4t4 VALUES( 'B', 'B' );
    INSERT INTO collate4t4 VALUES( 'A', 'A' );
    CREATE INDEX collate4i3 ON collate4t4(a COLLATE TEXT);
    CREATE INDEX collate4i4 ON collate4t4(b COLLATE NOCASE);
  








    DROP TABLE collate4t1;
    DROP TABLE collate4t2;
    DROP TABLE collate4t3;
    DROP TABLE collate4t4;
  


    CREATE TABLE collate4t1(a COLLATE NOCASE, b COLLATE TEXT);
    INSERT INTO collate4t1 VALUES( 'a', 'a' );
    INSERT INTO collate4t1 VALUES( 'b', 'b' );
    INSERT INTO collate4t1 VALUES( NULL, NULL );
    INSERT INTO collate4t1 VALUES( 'B', 'B' );
    INSERT INTO collate4t1 VALUES( 'A', 'A' );
    CREATE INDEX collate4i1 ON collate4t1(a, b);
  








    CREATE TABLE collate4t2(
      a COLLATE NOCASE, 
      b COLLATE TEXT, 
      PRIMARY KEY(a, b)
    );
    INSERT INTO collate4t2 VALUES( 'a', 'a' );
    INSERT INTO collate4t2 VALUES( NULL, NULL );
    INSERT INTO collate4t2 VALUES( 'B', 'B' );
  








    CREATE TABLE collate4t3(a COLLATE NOCASE, b COLLATE TEXT);
    INSERT INTO collate4t3 VALUES( 'a', 'a' );
    INSERT INTO collate4t3 VALUES( 'b', 'b' );
    INSERT INTO collate4t3 VALUES( NULL, NULL );
    INSERT INTO collate4t3 VALUES( 'B', 'B' );
    INSERT INTO collate4t3 VALUES( 'A', 'A' );
    CREATE INDEX collate4i2 ON collate4t3(a COLLATE TEXT, b COLLATE NOCASE);
  












    DROP TABLE collate4t1;
    DROP TABLE collate4t2;
    DROP TABLE collate4t3;
  
