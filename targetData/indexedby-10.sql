

    CREATE TABLE indexed(x,y);
    INSERT INTO indexed VALUES(1,2);
    SELECT * FROM indexed;
  


    CREATE INDEX i10 ON indexed(x);
    SELECT * FROM indexed indexed by i10 where x>0;
  


    DROP TABLE indexed;
    CREATE TABLE t10(indexed INTEGER);
    INSERT INTO t10 VALUES(1);
    CREATE INDEX indexed ON t10(indexed);
    SELECT * FROM t10 indexed by indexed WHERE indexed>0
  
