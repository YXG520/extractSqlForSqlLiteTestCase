

}
  db deserialize [decode_hexdb {
| size 8192 pagesize 4096 filename crash-ab10597e4e1c32.db
| page 1 offset 0
|      0: 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00   SQLite format 3.
|     16: 10 00 01 01 00 40 20 20 00 00 00 00 00 00 00 00   .....@  ........
|     96: 00 00 00 00 0d 00 00 00 01 0f d6 00 0f d6 00 00   ................
|   4048: 00 00 00 00 00 00 28 01 06 17 11 11 01 3d 74 61   ......(......=ta
|   4064: 62 6c 65 74 31 74 31 02 43 52 45 41 54 45 20 54   blet1t1.CREATE T
|   4080: 41 42 4c 45 20 74 31 28 61 2c 62 2c 63 2c 64 29   ABLE t1(a,b,c,d)
| page 2 offset 4096
|      0: 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ................
| end crash-ab10597e4e1c32.db



  SAVEPOINT one;



  INSERT INTO t1(b,c) VALUES(5,6);



  ROLLBACK TO one;

