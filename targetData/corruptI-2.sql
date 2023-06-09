

    CREATE TABLE r(x);
    INSERT INTO r VALUES('ABCDEFGHIJK');
    CREATE INDEX r1 ON r(x);
  

 SELECT * FROM r WHERE x >= 10.0 

 SELECT * FROM r WHERE x >= 10 

  # The following tests only work if OVERSIZE_CELL_CHECK is disabled

