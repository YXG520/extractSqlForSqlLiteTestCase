

}
  db deserialize [decode_hexdb {
| size 16384 pagesize 4096 filename c-b92b.txt.db
| page 1 offset 0
|      0: 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00   SQLite format 3.
|     16: 10 00 01 01 00 40 20 20 00 00 00 00 00 00 00 04   .....@  ........
|     32: 00 00 00 00 00 00 00 00 00 00 00 03 00 00 00 04   ................
|     48: 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00   ................
|     96: 00 00 00 00 0d 0f f8 00 04 0f 12 00 0f 91 0f d3   ................
|    112: 0f 67 0f 12 00 00 00 00 00 00 00 00 00 00 00 00   .g..............
|   3856: 00 00 53 04 07 1b 13 11 08 81 0d 74 72 69 67 67   ..S........trigg
|   3872: 65 72 74 72 30 74 31 43 52 45 41 54 45 20 54 52   ertr0t1CREATE TR
|   3888: 49 47 47 45 52 20 74 72 30 20 44 45 4c 45 54 45   IGGER tr0 DELETE
|   3904: 20 4f 4e 20 74 31 20 42 45 47 49 4e 0a 20 20 55    ON t1 BEGIN.  U
|   3920: 50 44 41 54 45 20 74 31 20 53 45 54 20 62 20 3d   PDATE t1 SET b =
|   3936: 20 61 3b 0a 45 4e 44 28 03 06 17 11 11 01 3d 69    a;.END(......=i
|   3952: 6e 64 65 78 69 30 74 31 04 43 52 45 41 54 45 20   ndexi0t1.CREATE 
|   3968: 49 4e 44 45 58 20 69 30 20 4f 4e 20 74 31 28 62   INDEX i0 ON t1(b
|   3984: 29 40 01 06 17 11 11 01 6d 74 61 62 6c 65 74 31   )@......mtablet1
|   4000: 74 31 02 43 52 45 41 54 45 20 54 41 42 4c 45 20   t1.CREATE TABLE 
|   4016: 74 31 28 61 20 55 4e 49 51 55 45 20 4f 4e 20 43   t1(a UNIQUE ON C
|   4032: 4f 4e 46 4c 49 43 54 20 52 45 50 4c 41 43 45 2c   ONFLICT REPLACE,
|   4048: 20 62 29 23 02 06 17 37 11 01 00 69 6e 64 65 78    b)#...7...index
|   4064: 73 71 6c 69 74 65 5f 61 75 74 6f 69 6e 64 65 78   sqlite_autoindex
|   4080: 5f 74 31 5f 31 74 31 03 00 00 00 08 00 00 00 00   _t1_1t1.........
| page 2 offset 4096
|      0: 0d 00 00 00 02 0f 00 00 00 00 00 00 00 00 00 00   ................
|   4080: 00 00 05 02 03 01 01 09 0d 05 01 03 01 01 04 0c   ................
| page 3 offset 8192
|      0: 0a 00 00 00 02 0f f5 00 0f fb 0f f5 00 00 00 00   ................
|   4080: 00 00 00 00 00 05 03 01 01 09 02 04 03 01 09 04   ................
| page 4 offset 12288
|      0: 0a 00 00 00 02 0f f5 00 0f fb 0f f5 00 00 00 00   ................
|   4080: 00 00 00 00 00 05 03 01 01 0d 02 04 03 00 00 00   ................
| end c-b92b.txt.db



  SELECT count(*) FROM sqlite_schema;
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
  INSERT INTO t1(a) SELECT randomblob(null) FROM c;
  
