

    DROP TABLE IF EXISTS t4;
    CREATE TABLE t4(
      a INT AS (b*2) VIRTUAL,
      b INT AS (c*2) STORED,
      c INT PRIMARY KEY
    ) STRICT;
    INSERT INTO t4(c) VALUES(1);
    SELECT * FROM t4;
  


    ALTER TABLE t4 ADD COLUMN d VARCHAR;
  


    ALTER TABLE t4 ADD COLUMN d;
  
