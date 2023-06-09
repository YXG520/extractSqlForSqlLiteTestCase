

}
  db deserialize [decode_hexdb {
.open --hexdb
| size 20480 pagesize 4096 filename crash-f022eb0ce64d27.db
| page 1 offset 0
|      0: 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00   SQLite format 3.
|     16: 10 00 01 01 00 40 20 20 00 00 00 00 00 00 00 05   .....@  ........
|     32: 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 04   ................
|     48: 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00   ................
|     96: 00 00 00 00 0d 0f f8 00 04 0e d2 00 0f 08 0f d3   ................
|    112: 0f ae 0e d2 00 00 00 00 00 00 00 00 00 00 00 00   ................
|   3792: 00 00 34 04 06 17 0f 11 01 57 69 6e 64 65 78 61   ..4......Windexa
|   3808: 74 31 05 43 52 45 41 54 45 20 55 4e 49 51 55 45   t1.CREATE UNIQUE
|   3824: 20 49 4e 44 45 58 20 61 20 4f 4e 20 74 31 28 61    INDEX a ON t1(a
|   3840: 2c 20 30 20 7c 20 61 29 81 23 01 07 17 11 11 01   , 0 | a).#......
|   3856: 82 31 74 61 62 6c 65 74 31 74 31 02 43 52 45 41   .1tablet1t1.CREA
|   3872: 54 45 20 54 41 42 4c 45 20 74 31 28 0a 20 20 20   TE TABLE t1(.   
|   3888: 20 67 63 62 20 41 53 20 28 62 2a 31 29 2c 0a 20    gcb AS (b*1),. 
|   3904: 20 20 20 61 20 49 34 54 45 47 45 52 20 50 52 49      a I4TEGER PRI
|   3920: 4d 41 52 59 20 4b 45 59 2c 0a 20 20 20 20 67 63   MARY KEY,.    gc
|   3936: 63 20 41 53 20 28 74 32 2b 30 29 2c 0a 20 20 20   c AS (t2+0),.   
|   3952: 20 62 20 55 4e 49 51 55 45 2c 0a 20 20 20 20 67    b UNIQUE,.    g
|   3968: 63 61 20 41 53 20 28 31 2a 61 2b 30 29 2c 0a 20   ca AS (1*a+0),. 
|   3984: 20 20 20 74 32 20 55 4e 49 51 55 45 0a 20 20 29      t2 UNIQUE.  )
|   4000: 20 57 49 54 48 4f 55 54 20 52 4f 57 49 44 23 03    WITHOUT ROWID#.
|   4016: 06 17 37 11 01 00 69 6e 64 65 78 73 71 6c 69 74   ..7...indexsqlit
|   4032: 65 5f 61 75 74 6f 69 6e 64 65 78 5f 74 31 5f 33   e_autoindex_t1_3
|   4048: 74 31 02 23 02 06 17 37 11 01 00 69 6e 64 65 78   t1.#...7...index
|   4064: 73 71 6c 69 74 65 5f 61 75 74 6f 69 6e 64 65 78   sqlite_autoindex
|   4080: 5f 74 31 5f 32 74 31 02 00 00 00 08 00 00 00 00   _t1_2t1.........
| page 2 offset 4096
|      0: 0a 00 00 00 05 0f d8 00 0f f8 0f f8 9f e8 0f e0   ................
|     16: 0f d8 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ................
|   4048: 00 00 00 00 00 00 00 00 07 04 01 02 00 0f 13 88   ................
|   4064: 07 04 01 02 00 0e 0f a0 07 04 01 02 00 0d 0b b8   ................
|   4080: 07 04 01 02 00 0c 07 d0 07 04 01 02 00 0b 03 e8   ................
| page 5 offset 16384
|      0: 0a 00 00 00 05 0f e2 00 0f fa 0f f4 0f ee 0f e8   ................
|     16: 0f e2 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ................
|   4064: 00 00 05 03 01 01 0f 0f 05 03 01 01 0e 0e 05 03   ................
|   4080: 01 01 0d 0d 05 03 01 01 0c 0c 05 03 01 01 0b 0b   ................
| end crash-f022eb0ce64d27.db



  PRAGMA writable_schema=ON;



  UPDATE t1 SET a=1;



  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c INTEGER, d TEXT);
  CREATE INDEX i1 ON t1((NULL));
  INSERT INTO t1 VALUES(1, NULL, 1, 'text value');
  PRAGMA writable_schema = on;
  UPDATE sqlite_schema SET 
      sql = 'CREATE INDEX i1 ON t1(b, c, d)', 
      tbl_name = 't1', 
      type='index' 
  WHERE name='i1';



  PRAGMA integrity_check;
