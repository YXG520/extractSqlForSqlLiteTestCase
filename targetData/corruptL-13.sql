

}
  db deserialize [decode_hexdb {
| size 8192 pagesize 4096 filename crash-81dd2952aef34f.db
| page 1 offset 0
|      0: 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00   SQLite format 3.
|     16: 10 00 01 01 00 40 20 20 00 00 00 00 00 00 00 02   .....@  ........
|     32: 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 04   ................
|     48: 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00   ................
|     96: 00 00 00 00 0d 00 00 00 01 0f c4 00 0f c4 00 00   ................
|   4032: 00 00 00 00 3a 11 06 17 11 11 01 61 74 61 62 6c   ....:......atabl
|   4048: 65 74 31 74 31 02 43 52 45 41 54 45 20 54 41 42   et1t1.CREATE TAB
|   4064: 4c 45 20 74 31 28 61 20 49 4e 54 45 47 45 52 20   LE t1(a INTEGER 
|   4080: 50 52 49 4d 41 52 59 20 4b 45 59 2c 62 2c 63 29   PRIMARY KEY,b,c)
| page 2 offset 4096
|      0: 0d 07 70 00 02 0f eb 00 0f fa 00 00 00 00 00 00   ..p.............
|   4064: 00 00 00 00 00 00 00 00 00 00 00 05 bf ff ff ff   ................
|   4080: ff ff ff ff ff 04 00 01 00 02 04 01 00 00 00 00   ................
| end crash-81dd2952aef34f.db



  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x-2019 FROM c WHERE x<2)
    INSERT INTO t1(b,c) SELECT last_insert_rowid(), x FROM c;

