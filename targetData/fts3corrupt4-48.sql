

}
  db deserialize [decode_hexdb {
.open --hexdb
| size 20480 pagesize 4096 filename sql038051.txt.db
| page 1 offset 0
|      0: 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00   SQLite format 3.
|     16: 10 00 01 01 00 40 20 20 00 00 00 00 00 00 00 00   .....@  ........
|     96: 00 00 00 00 0d 0e fc 00 05 0e 13 00 0f ca 0f 6c   ...............l
|    112: 0f 04 0e 13 0e c9 00 00 00 00 00 00 00 00 00 00   ................
|   3600: 00 00 00 81 33 04 07 17 1f 1f 01 82 35 74 61 62   ....3.......5tab
|   3616: 6c 65 78 31 5f 73 65 67 64 69 72 78 31 5f 73 65   lex1_segdirx1_se
|   3632: 67 64 69 72 04 43 52 45 41 54 45 20 54 41 42 4c   gdir.CREATE TABL
|   3648: 45 20 27 78 31 5f 73 65 67 64 69 72 27 28 6c 65   E 'x1_segdir'(le
|   3664: 76 65 6c 20 49 4e 54 45 47 45 52 2c 69 64 78 20   vel INTEGER,idx 
|   3680: 49 4e 54 45 47 45 52 2c 73 74 61 72 74 5f 62 6c   INTEGER,start_bl
|   3696: 6f 63 6b 20 49 4e 54 45 47 45 52 2c 6c 65 61 76   ock INTEGER,leav
|   3712: 65 73 5f 65 6e 64 5f 62 6c 6f 63 6b 20 49 4e 54   es_end_block INT
|   3728: 45 47 45 52 2c 65 6e 64 5f 62 6c 6f 63 6b 20 49   EGER,end_block I
|   3744: 4e 54 45 47 45 52 2c 72 6f 6f 74 20 42 4c 4f 42   NTEGER,root BLOB
|   3760: 2c 50 52 49 4d 41 52 59 20 4b 45 59 28 6c 65 76   ,PRIMARY KEY(lev
|   3776: 65 6c 2c 20 69 64 78 29 29 31 05 06 17 45 1f 01   el, idx))1...E..
|   3792: 00 69 6e 64 65 78 73 71 6c 69 74 65 5f 61 75 74   .indexsqlite_aut
|   3808: 6f 69 6e 64 65 78 5f 78 31 5f 73 65 67 64 69 72   oindex_x1_segdir
|   3824: 5f 31 78 31 5f 73 65 67 64 69 72 05 00 00 00 08   _1x1_segdir.....
|   3840: 00 00 00 00 66 03 07 17 23 23 01 81 13 74 61 62   ....f...##...tab
|   3856: 6c 65 78 31 5f 73 65 67 6d 65 6e 74 73 78 31 5f   lex1_segmentsx1_
|   3872: 73 65 67 6d 65 6e 74 73 03 43 52 45 41 54 45 20   segments.CREATE 
|   3888: 54 41 42 4c 45 20 27 78 31 5f 73 65 67 6d 65 6e   TABLE 'x1_segmen
|   3904: 74 73 27 28 62 6c 6f 63 6b 69 64 20 49 4e 54 45   ts'(blockid INTE
|   3920: 47 45 52 20 50 52 49 4d 41 52 59 20 4b 45 59 2c   GER PRIMARY KEY,
|   3936: 20 62 6c 6f 63 6b 20 42 4c 4f 42 29 5c 02 07 17    block BLOB)....
|   3952: 21 21 01 81 03 74 61 62 6c 65 78 31 5f 63 6f 6e   !!...tablex1_con
|   3968: 74 65 6e 74 78 31 5f 63 6f 6e 74 65 6e 74 02 43   tentx1_content.C
|   3984: 52 45 41 54 45 20 54 41 42 4c 45 20 27 78 31 5f   REATE TABLE 'x1_
|   4000: 63 6f 6e 74 65 6e 74 27 28 64 6f 63 69 64 20 49   content'(docid I
|   4016: 4e 54 45 47 45 52 20 50 52 49 4d 41 52 59 20 4b   NTEGER PRIMARY K
|   4032: 45 59 2c 20 27 63 30 78 27 29 34 01 06 17 11 11   EY, 'c0x')4.....
|   4048: 08 57 74 61 62 6c 65 78 31 78 31 43 52 45 41 54   .Wtablex1x1CREAT
|   4064: 45 20 56 49 52 54 55 41 4c 20 54 41 42 4c 45 20   E VIRTUAL TABLE 
|   4080: 78 31 20 55 53 49 4e 47 20 66 74 73 33 28 78 29   x1 USING fts3(x)
| page 2 offset 4096
|      0: 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ................
|   3920: 00 00 00 2e 04 03 00 63 62 72 61 69 6e 73 74 65   .......cbrainste
|   3936: 6d 20 62 72 61 69 6e 73 74 65 6d 73 20 62 72 61   m brainstems bra
|   3952: 69 6e 73 74 6f 72 6d 20 62 72 61 69 6e 73 74 6f   instorm brainsto
|   3968: 72 6d 73 2b 03 03 00 5d 62 72 61 69 6e 20 62 72   rms+...]brain br
|   3984: 61 69 6e 63 68 69 6c 64 20 62 72 61 69 6e 65 64   ainchild brained
|   4000: 20 62 72 61 69 6e 69 6e 67 20 62 72 61 69 6e 73    braining brains
|   4016: 26 02 03 00 53 62 72 61 67 73 20 62 72 61 69 64   &...Sbrags braid
|   4032: 20 62 72 61 69 64 65 64 20 62 72 61 69 64 69 6e    braided braidin
|   4048: 67 20 62 72 61 69 64 73 26 01 03 00 53 62 72 61   g braids&...Sbra
|   4064: 65 73 20 62 72 61 67 20 62 72 61 67 67 65 64 20   es brag bragged 
|   4080: 62 72 61 c3 67 65 72 20 62 72 61 67 67 69 6e 67   bra.ger bragging
| page 3 offset 8192
|      0: 0d 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00   ................
| page 4 offset 12288
|      0: 0d 00 00 00 04 0f 20 00 0f c8 0f 90 0f 54 0f 20   ...... ......T. 
|   3872: 32 04 07 08 01 08 08 15 58 03 30 20 33 38 00 09   2.......X.0 38..
|   3888: 62 72 61 69 6e 73 74 65 6d 03 04 02 00 09 01 73   brainstem......s
|   3904: 03 04 03 00 07 03 6f 72 6d 03 04 04 00 0a 01 73   ......orm......s
|   3920: 03 04 05 00 3a 03 07 08 01 08 08 15 68 02 30 20   ....:.......h.0 
|   3936: 34 36 00 05 62 72 61 69 6e 03 03 02 00 05 05 63   46..brain......c
|   3952: 68 69 6c 64 03 03 03 00 05 02 65 64 03 03 04 00   hild......ed....
|   3968: 05 03 69 6e 67 03 03 05 00 05 01 73 03 03 06 00   ..ing......s....
|   3984: 36 02 07 08 09 08 08 15 62 30 20 34 33 00 05 62   6.......b0 43..b
|   4000: 72 61 67 73 03 02 02 00 03 02 69 64 03 02 03 00   rags......id....
|   4016: 05 02 65 64 03 02 04 00 05 03 69 6e 67 03 02 05   ..ed......ing...
|   4032: 00 05 01 73 03 02 06 00 36 01 07 08 08 08 08 15   ...s....6.......
|   4048: 62 30 20 34 33 00 05 62 72 61 65 73 03 01 02 00   b0 43..braes....
|   4064: 03 01 68 03 01 03 00 04 03 67 65 74 03 01 04 00   ..h......get....
|   4080: 06 01 72 03 01 05 00 05 03 69 6e 67 03 01 06 00   ..r......ing....
| page 5 offset 16384
|      0: 0a 00 00 00 04 0f e7 00 0f fb 0f f5 0f ee 0f e7   ................
|   4064: 00 00 00 00 00 00 00 06 04 08 01 01 03 04 06 04   ................
|   4080: 08 01 01 02 03 05 04 08 09 01 02 04 04 08 08 09   ................
| end sql038051.txt.db



  INSERT INTO x1(x1) VALUES('nodesize=24'),('merge=3,4');
  INSERT INTO x1(x1) VALUES( 'merge=3,4' ),('merge=3,4');

