

    CREATE TABLE t1(
      a INT PRIMARY KEY,
      b INT
           REFERENCES t1 ON DELETE CASCADE
           REFERENCES t2,
      c TEXT,
      FOREIGN KEY (b,c) REFERENCES t2(x,y) ON UPDATE CASCADE
    ) WITHOUT rowid;
  


    CREATE TABLE t2(
      x INT PRIMARY KEY,
      y TEXT
    ) WITHOUT rowid;
  


    CREATE TABLE t3(
      a INT REFERENCES t2,
      b INT REFERENCES t1,
      FOREIGN KEY (a,b) REFERENCES t2(x,y)
    );
  
