

      CREATE TABLE t1(a,b);
      CREATE INDEX x1 on t1("b");
      ALTER TABLE t1 DROP COLUMN b;
    


    DROP TABLE t1;
    CREATE TABLE t1(a,"b");
    CREATE INDEX x1 on t1("b");
    ALTER TABLE t1 DROP COLUMN b;
  


    DROP TABLE t1;
    CREATE TABLE t1(a,'b');
    CREATE INDEX x1 on t1("b");
    ALTER TABLE t1 DROP COLUMN b;
  


    DROP TABLE t1;
    CREATE TABLE t1(a,"b");
    CREATE INDEX x1 on t1('b');
    ALTER TABLE t1 DROP COLUMN b;
  


    DROP TABLE t1;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX x1 ON t1("a"||"b");
    INSERT INTO t1 VALUES(1,2,3),(1,4,5);
    ALTER TABLE t1 DROP COLUMN b;
  


    DROP TABLE t1;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX x1 ON t1("a"||"x");
    INSERT INTO t1 VALUES(1,2,3),(1,4,5);
    ALTER TABLE t1 DROP COLUMN b;
  
