

    PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
  

  1  "PRAGMA journal_mode"                wal
  2  "PRAGMA main.journal_mode"           wal
  3  "PRAGMA journal_mode = delete"       delete
  4  "PRAGMA journal_mode"                delete
  5  "PRAGMA main.journal_mode"           delete
  6  "PRAGMA journal_mode = wal"          wal
  7  "PRAGMA journal_mode"                wal
  8  "PRAGMA main.journal_mode"           wal

  9  "PRAGMA journal_mode"                wal
 10  "PRAGMA main.journal_mode"           wal
 11  "PRAGMA main.journal_mode = delete"  delete
 12  "PRAGMA journal_mode"                delete
 13  "PRAGMA main.journal_mode"           delete
 14  "PRAGMA main.journal_mode = wal"     wal
 15  "PRAGMA journal_mode"                wal
 16  "PRAGMA main.journal_mode"           wal


