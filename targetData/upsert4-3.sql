

    INSERT INTO abc VALUES(1, 'one', 'two');
  


    SELECT * FROM abc
  

  1 {
    CREATE TABLE abc(a INTEGER PRIMARY KEY, x, y);
    CREATE UNIQUE INDEX abc1 ON abc(x) WHERE y>0;
    CREATE UNIQUE INDEX abc2 ON abc(y) WHERE x='xyz' COLLATE nocase;
  
