

    CREATE TABLE t2 AS SELECT * FROM weird;
    SELECT * FROM t2;
  


    SELECT sql FROM sqlite_master WHERE name='t2';
  


    CREATE TABLE "t3""xyz"(a,b,c);
    INSERT INTO [t3"xyz] VALUES(1,2,3);
    SELECT * FROM [t3"xyz];
  


    CREATE TABLE [t4"abc] AS SELECT count(*) as cnt, max(b+c) FROM [t3"xyz];
    SELECT * FROM [t4"abc];
  


    SELECT sql FROM sqlite_master WHERE name='t4"abc'
  


      CREATE TEMPORARY TABLE t5 AS SELECT count(*) AS [y'all] FROM [t3"xyz];
      SELECT * FROM t5;
    


    SELECT * FROM [t4"abc];
  


    SELECT * FROM t2;
  


    SELECT * FROM t5;
  


    CREATE TABLE t5 AS SELECT * FROM no_such_table;
  


    CREATE TABLE t10("col.1" [char.3]);
    CREATE TABLE t11 AS SELECT * FROM t10;
    SELECT sql FROM sqlite_master WHERE name = 't11';
  


    CREATE TABLE t12(
      a INTEGER,
      b VARCHAR(10),
      c VARCHAR(1,10),
      d VARCHAR(+1,-10),
      e VARCHAR (+1,-10),
      f "VARCHAR (+1,-10, 5)",
      g BIG INTEGER
    );
    CREATE TABLE t13 AS SELECT * FROM t12;
    SELECT sql FROM sqlite_master WHERE name = 't13';
  
