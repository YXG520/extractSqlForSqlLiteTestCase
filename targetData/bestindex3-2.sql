

    CREATE TABLE t2(x TEXT COLLATE nocase, y TEXT);
    CREATE INDEX t2x ON t2(x COLLATE nocase);
    CREATE INDEX t2y ON t2(y);
  

S
Q
