

  CREATE TABLE IF NOT EXISTS error1(
    word TEXT PRIMARY KEY,
    cnt INTEGER
  ) WITHOUT _rowid_;



  CREATE TABLE IF NOT EXISTS error2(
    word TEXT PRIMARY KEY,
    cnt INTEGER
  ) WITHOUT oid;

