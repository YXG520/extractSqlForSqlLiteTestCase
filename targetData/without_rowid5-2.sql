

  CREATE TABLE IF NOT EXISTS wordcount(
    word TEXT PRIMARY KEY,
    cnt INTEGER
  ) WITHOUT ROWID;
  INSERT INTO wordcount VALUES('one',1);



  SELECT rowid FROM wordcount;



  CREATE TABLE IF NOT EXISTS wordcount_b(
    word TEXT PRIMARY KEY,
    cnt INTEGER
  ) WITHOUT rowid;
  INSERT INTO wordcount_b VALUES('one',1);



  SELECT rowid FROM wordcount_b;



  CREATE TABLE IF NOT EXISTS wordcount_c(
    word TEXT PRIMARY KEY,
    cnt INTEGER
  ) without rowid;
  INSERT INTO wordcount_c VALUES('one',1);



  SELECT rowid FROM wordcount_c;



  CREATE TABLE IF NOT EXISTS wordcount_d(
    word TEXT PRIMARY KEY,
    cnt INTEGER
  ) WITHOUT rowid;
  INSERT INTO wordcount_d VALUES('one',1);



  SELECT rowid FROM wordcount_d;

