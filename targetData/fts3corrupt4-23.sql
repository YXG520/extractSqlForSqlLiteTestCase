

}
  db deserialize [decode_hexdb {
.open --hexdb
| size 28672 pagesize 4096 filename crash-670b15f2955a36.db
| page 1 offset 0
|      0: 53 51 4c 69 74 65 20 66 6f 72 6d 61 74 20 33 00   SQLite format 3.
|     16: 10 00 01 01 00 40 20 20 00 00 00 00 00 00 00 07   .....@  ........
|     32: 00 00 00 02 10 00 00 01 00 00 00 07 00 00 00 00   ................
|     96: 00 00 00 00 0d 0e b1 00 06 0d a4 00 0f 8d 0f 21   ...............!
|    112: 0e b9 0d c8 0e 7e 0d a4 00 00 00 00 00 00 00 00   .....~..........
|   3488: 00 00 00 00 22 07 06 17 11 11 01 31 74 61 62 6c   ...........1tabl
|   3504: 65 74 32 74 32 07 43 52 45 41 54 45 20 54 41 42   et2t2.CREATE TAB
|   3520: 4c 45 20 74 32 28 78 29 81 33 05 07 17 1f 1f 01   LE t2(x).3......
|   3536: 82 35 74 61 62 6c 65 74 31 5f 73 65 67 64 69 72   .5tablet1_segdir
|   3552: 74 31 5f 73 65 67 64 69 72 05 43 52 45 41 54 45   t1_segdir.CREATE
|   3568: 20 54 41 42 4c 45 20 27 74 31 5f 73 65 67 64 69    TABLE 't1_segdi
|   3584: 72 27 28 6c 65 76 65 6c 20 49 4e 54 45 47 45 52   r'(level INTEGER
|   3600: 2c 69 64 78 20 49 4e 54 45 47 45 52 2c 73 74 61   ,idx INTEGER,sta
|   3616: 72 74 5f 62 6c 6f 63 6b 20 49 4e 54 45 47 45 52   rt_block INTEGER
|   3632: 2c 6c 65 61 76 65 73 5f 65 6e 64 5f 62 6c 6f 63   ,leaves_end_bloc
|   3648: 6b 20 49 4e 54 45 47 45 52 2c 65 6e 64 5f 62 6c   k INTEGER,end_bl
|   3664: 6f 63 6b 20 49 4e 54 45 47 45 52 2c 72 6f 6f 74   ock INTEGER,root
|   3680: 20 42 4c 4f 42 2c 50 52 49 4d 41 52 59 20 4b 45    BLOB,PRIMARY KE
|   3696: 59 28 6c 65 76 65 6c 2c 20 69 64 78 29 29 31 06   Y(level, idx))1.
|   3712: 06 17 45 1f 01 00 69 6e 64 65 78 73 71 6c 69 74   ..E...indexsqlit
|   3728: 65 5f 61 75 74 6f 69 6e 64 65 78 5f 74 31 5f 73   e_autoindex_t1_s
|   3744: 65 67 64 69 72 5f 31 74 31 5f 73 65 67 64 69 72   egdir_1t1_segdir
|   3760: 06 0f c7 00 08 00 00 00 00 66 04 07 17 23 23 01   .........f...##.
|   3776: 81 13 74 61 62 6c 75 74 31 5f 73 65 67 6d 65 6e   ..tablut1_segmen
|   3792: 74 73 74 31 5f 73 65 67 6d 65 6e 74 73 04 43 52   tst1_segments.CR
|   3808: 45 41 54 45 20 54 41 42 4c 45 20 27 74 31 5f 73   EATE TABLE 't1_s
|   3824: 65 67 6d 65 6e 74 73 27 28 62 6c 6f 63 6b 69 64   egments'(blockid
|   3840: 20 49 4e 54 45 47 45 42 20 50 52 49 4d 41 52 59    INTEGEB PRIMARY
|   3856: 20 4b 45 59 2c 20 62 6c 6f 63 6b 20 42 4c 4f 42    KEY, block BLOB
|   3872: 29 6a 03 07 17 21 21 01 81 1f 74 61 62 6c 65 74   )j...!!...tablet
|   3888: 31 5f 63 6f 6e 74 65 6e 74 74 31 5f 63 6f 6e 74   1_contentt1_cont
|   3904: 65 6e 74 03 43 52 45 41 54 45 20 54 41 42 4c 45   ent.CREATE TABLE
|   3920: 20 27 74 31 5f 63 6f 6e 74 65 6e 74 27 28 64 6f    't1_content'(do
|   3936: 63 69 64 20 49 4e 54 45 47 45 52 20 50 52 49 4d   cid INTEGER PRIM
|   3952: 41 52 59 20 4b 45 59 2c 20 27 63 30 61 27 2c 20   ARY KEY, 'c0a', 
|   3968: 27 63 31 62 27 2c 20 27 63 32 63 27 29 38 02 06   'c1b', 'c2c')8..
|   3984: 17 11 11 08 5f 74 61 62 6c 65 74 31 74 31 43 52   ...._tablet1t1CR
|   4000: 45 41 54 45 20 56 49 52 54 55 41 4c 20 54 41 42   EATE VIRTUAL TAB
|   4016: 4c 45 20 74 31 20 55 53 49 4e 47 20 66 74 73 33   LE t1 USING fts3
|   4032: 28 61 2c 62 2c 63 29 00 00 00 00 00 00 00 00 00   (a,b,c).........
| page 3 offset 8192
|      0: 0d 00 00 00 25 0b 48 01 0f d8 00 2f 0f 86 0f 74   ....%.H..../...t
|     16: 0f 61 0f 4e 0f 2f 0f 0f 0e ef 0e d7 0e be 0e a5   .a.N./..........
|     32: 0e 8d 0e 74 0e 5a fe 40 0e 24 0e 08 0d ef 0d d5   ...t.Z.@.$......
|     48: 0d bb 0d a0 0d 84 0d 68 0d 4f 81 35 0d 1b 0c fb   .......h.O.5....
|     64: 0c da 0c b9 0c 99 0c 78 0c 57 0c 3e 00 00 00 00   .......x.W.>....
|   2880: 00 00 00 00 00 00 00 00 81 3f 25 06 00 82 7f 10   .........?%.....
|   2896: 00 43 4f 4d 50 49 4c 45 52 3d 67 63 63 2d 35 2e   .COMPILER=gcc-5.
|   2912: 34 2e 30 20 32 30 31 36 30 36 30 39 20 44 45 42   4.0 20160609 DEB
|   2928: 55 47 20 45 4e 41 42 4c 45 20 44 42 53 54 41 54   UG ENABLE DBSTAT
|   2944: 20 56 54 41 42 20 45 4e 41 42 4c 45 20 46 54 53    VTAB ENABLE FTS
|   2960: 34 20 45 4e 41 42 4c 45 20 46 54 53 35 20 45 4e   4 ENABLE FTS5 EN
|   2976: 41 42 4c 45 20 47 45 4f 50 4f 4c 59 20 45 4e 41   ABLE GEOPOLY ENA
|   2992: 42 4c 45 20 4a 53 4f 4e 31 20 45 4e 41 42 4c 45   BLE JSON1 ENABLE
|   3008: 20 4d 45 4d 53 59 53 35 20 45 4e 41 42 4c 45 20    MEMSYS5 ENABLE 
|   3024: 52 54 52 45 45 20 4d 41 58 20 4d 45 4d 4f 52 59   RTREE MAX MEMORY
|   3040: 3d 35 30 30 30 30 30 30 30 20 4f 4d 49 54 20 4c   =50000000 OMIT L
|   3056: 4f 41 44 20 45 58 54 45 4e 53 49 4f 4e 20 54 48   OAD EXTENSION TH
|   3072: 52 45 41 44 53 41 46 45 3d 30 18 24 05 00 35 0f   READSAFE=0.$..5.
|   3088: 19 54 48 52 45 41 44 53 41 46 45 3d 30 58 42 49   .THREADSAFE=0XBI
|   3104: 4e 41 52 59 18 23 55 00 25 0f 19 54 48 52 45 41   NARY.#U.%..THREA
|   3120: 44 53 41 46 45 3d 30 58 4e 4f 43 41 53 45 17 22   DSAFE=0XNOCASE..
|   3136: 05 00 25 0f 17 54 48 52 45 41 44 53 41 46 45 3d   ..%..THREADSAFE=
|   3152: 30 58 52 54 52 49 4d 1f 21 05 00 33 0f 19 4f 4d   0XRTRIM.!..3..OM
|   3168: 49 54 20 4c 4f 41 44 20 45 58 54 45 4e 53 49 4f   IT LOAD EXTENSIO
|   3184: 4e 58 42 49 4e 41 52 59 1f 20 05 00 33 0f 19 4f   NXBINARY. ..3..O
|   3200: 4d 49 54 20 4c 4f 41 44 20 45 58 54 45 4e 53 49   MIT LOAD EXTENSI
|   3216: 4f 4e 58 4e 4f 43 41 53 45 1e 1f 05 00 33 0f 17   ONXNOCASE....3..
|   3232: 4f 4d 49 54 20 4c 4f 41 44 20 45 58 54 45 4e 53   OMIT LOAD EXTENS
|   3248: 49 4f 4e 58 52 54 52 49 4d 1f 1e 05 00 33 0f 19   IONXRTRIM....3..
|   3264: 4d 41 58 20 4d 45 4d 4f 52 59 3d 35 30 30 30 30   MAX MEMORY=50000
|   3280: 30 30 30 58 42 49 4e 41 52 59 1f 1d 05 00 33 0f   000XBINARY....3.
|   3296: 19 4d 41 58 20 4d 45 4d 4f 52 59 3d 35 30 30 30   .MAX MEMORY=5000
|   3312: 30 30 30 30 58 4e 4f 43 41 53 45 1e 1c 05 00 33   0000XNOCASE....3
|   3328: 0f 17 4d 41 58 20 4d 45 4d 4f 52 59 3d 35 30 30   ..MAX MEMORY=500
|   3344: 30 30 30 30 30 58 52 54 52 49 4d 18 1b 05 00 25   00000XRTRIM....%
|   3360: 0f 19 45 4e 41 42 4c 44 20 52 54 52 45 45 58 42   ..ENABLD RTREEXB
|   3376: 49 4e 41 52 59 18 1a 05 00 25 0f 19 45 4e 41 42   INARY....%..ENAB
|   3392: 4c 45 20 52 54 52 45 45 58 4e 4f 43 41 53 45 17   LE RTREEXNOCASE.
|   3408: 19 05 00 24 0f 17 45 4e 40 42 4c 45 20 52 54 52   ...$..EN@BLE RTR
|   3424: 45 45 58 52 54 52 49 4d 1a 18 05 00 29 0f 19 45   EEXRTRIM....)..E
|   3440: 4e 41 42 4c 45 20 4d 45 4d 53 59 53 35 58 42 49   NABLE MEMSYS5XBI
|   3456: 4e 41 52 59 1a 17 05 00 29 0f 19 45 4d 41 42 4c   NARY....)..EMABL
|   3472: 45 20 4d 45 4d 53 59 53 35 58 4e 4f 43 41 4c 45   E MEMSYS5XNOCALE
|   3488: 19 16 05 00 29 0f 17 45 4e 41 42 4c 45 20 4d 45   ....)..ENABLE ME
|   3504: 4e 53 59 53 35 58 52 54 52 49 4d 18 15 05 00 25   NSYS5XRTRIM....%
|   3520: 0f 19 45 4e 41 42 4c 45 20 4a 53 4f 4e 31 58 42   ..ENABLE JSON1XB
|   3536: 49 4e 41 52 59 18 14 05 00 25 0f 19 45 4e 41 42   INARY....%..ENAB
|   3552: 4c 45 20 4a 53 4f 4e 31 58 4e 4f 43 41 53 45 17   LE JSON1XNOCASE.
|   3568: 13 05 00 25 0f 17 45 4e 41 42 4c 45 20 4a 53 4f   ...%..ENABLE JSO
|   3584: 4e 31 58 52 54 5f b9 4d 1a 12 05 00 29 0f 19 45   N1XRT_.M....)..E
|   3600: 4e 41 42 4c 45 20 47 45 4f 50 31 4c 59 58 42 49   NABLE GEOP1LYXBI
|   3616: 4e 41 52 58 1a 11 05 00 29 0f 19 45 4e 41 42 4c   NARX....)..ENABL
|   3632: 45 20 47 45 4f 50 4f 4c 59 58 4e 4f 43 41 53 45   E GEOPOLYXNOCASE
|   3648: 19 10 05 00 29 0f 17 45 4e 41 42 4c 45 20 57 45   ....)..ENABLE WE
|   3664: 4f 50 4f 4c 59 48 52 54 52 49 4d 17 0f 05 00 23   OPOLYHRTRIM....#
|   3680: 0f 19 45 4e 41 42 4c 45 20 46 54 53 35 58 42 49   ..ENABLE FTS5XBI
|   3696: 4e 41 53 59 17 0e 05 00 23 0f 19 45 4e 40 42 4b   NASY....#..EN@BK
|   3712: 45 20 46 54 53 35 58 4e 4f 43 41 53 45 16 0d 05   E FTS5XNOCASE...
|   3728: 00 23 0f 17 45 4e 41 42 4c 45 20 46 54 53 35 58   .#..ENABLE FTS5X
|   3744: 52 54 52 49 4d 17 0c 05 00 23 0f 19 45 4e 41 42   RTRIM....#..ENAB
|   3760: 4c 45 20 46 54 94 34 58 42 49 4e 41 52 59 17 0b   LE FT.4XBINARY..
|   3776: 05 00 23 0f 19 45 4e 41 42 4c 43 70 46 54 53 34   ..#..ENABLCpFTS4
|   3792: 58 4e 4f 43 41 53 45 16 0a 05 00 23 0f 17 45 4e   XNOCASE....#..EN
|   3808: 41 42 4c 45 20 46 54 53 34 58 52 54 52 49 4d 1e   ABLE FTS4XRTRIM.
|   3824: 09 05 00 31 0f 19 45 4e 41 42 4c 45 20 44 42 53   ...1..ENABLE DBS
|   3840: 54 41 54 20 56 54 41 42 58 42 49 4e 41 52 59 1e   TAT VTABXBINARY.
|   3856: 08 05 00 31 0f 19 45 4e 41 42 4c 45 20 44 32 53   ...1..ENABLE D2S
|   3872: 54 41 54 20 56 54 41 42 58 4e 4f 43 41 53 45 1d   TAT VTABXNOCASE.
|   3888: 07 05 00 31 0f 17 45 4e 41 42 4c 45 20 44 42 53   ...1..ENABLE DBS
|   3904: 54 41 54 20 56 54 41 42 58 52 54 52 49 4d 11 06   TAT VTABXRTRIM..
|   3920: 05 0b 27 0f 19 44 45 42 55 47 58 42 49 4e 41 52   ..'..DEBUGXBINAR
|   3936: 59 11 05 05 00 17 0f 19 44 45 42 55 47 58 4e 4f   Y.......DEBUGXNO
|   3952: 43 41 53 45 10 03 05 00 17 0f 17 44 45 42 55 47   CASE.......DEBUG
|   3968: 58 52 54 52 49 4d 27 03 05 00 43 0f 19 43 4f 4d   XRTRIM'...C..COM
|   3984: 50 49 4c 45 52 3d 67 63 63 2d 35 2e 34 2e 30 20   PILER=gcc-5.4.0 
|   4000: 32 30 31 36 30 36 30 39 58 42 49 4e 41 52 59 27   20160609XBINARY'
|   4016: 02 05 00 43 0f 19 43 4f 4d 50 49 4c 35 52 3d 67   ...C..COMPIL5R=g
|   4032: 63 63 2d 35 2e 34 2e 30 20 32 30 31 36 30 36 30   cc-5.4.0 2016060
|   4048: 39 58 4e 4f 43 41 53 45 26 01 05 00 43 0f 02 43   9XNOCASE&...C..C
|   4064: 4f 4d 50 49 4c 45 52 3d 67 63 63 2d 35 2e 34 2e   OMPILER=gcc-5.4.
|   4080: 30 20 32 30 31 36 30 36 30 39 58 00 00 00 00 00   0 20160609X.....
| page 5 offset 16384
|      0: 0d 00 00 00 02 0b a0 00 0c ad 0b a0 00 00 00 00   ................
|   2976: 82 0a 02 08 08 09 08 08 17 84 06 30 20 32 35 33   ...........0 253
|   2992: 00 01 30 04 25 06 1b 00 00 08 32 30 31 36 30 36   ..0.%.....201606
|   3008: 30 39 03 25 07 00 00 01 34 03 25 05 00 00 01 35   09.%....4.%....5
|   3024: 03 25 04 00 01 07 30 30 30 30 30 30 30 08 55 1a   .%....0000000.U.
|   3040: 00 00 08 63 6f 6d 70 69 6c 65 72 03 25 02 00 00   ...compiler.%...
|   3056: 06 64 62 73 74 61 74 03 25 0a 00 01 04 65 61 75   .dbstat.%....eau
|   3072: 67 03 25 08 00 00 06 65 6e 61 62 6c 65 09 25 09   g.%....enable.%.
|   3088: 05 04 04 04 04 04 00 01 08 78 74 65 6e 73 69 6f   .........xtensio
|   3104: 6e 03 25 1d 00 00 04 66 74 73 34 03 25 0d 00 03   n.%....fts4.%...
|   3120: 01 35 03 25 0f 00 00 0c 97 63 63 03 25 03 00 01   .5.%.....cc.%...
|   3136: 06 65 6f 70 6f 6c 7a 03 25 11 00 00 05 6a 73 6f   .eopolz.%....jso
|   3152: 6e 31 03 25 13 00 00 04 6c 6f 61 64 03 25 1c 00   n1.%....load.%..
|   3168: 00 03 6d 61 78 03 25 18 00 01 05 65 6d 6f 72 79   ..max.%....emory
|   3184: 03 25 3d f0 03 04 73 79 73 35 03 25 15 00 00 04   .%=...sys5.%....
|   3200: 6f 6d 69 74 03 25 1b 00 00 05 72 74 72 65 65 03   omit.%....rtree.
|   3216: 25 17 00 00 0a 74 68 72 65 61 64 73 61 66 65 03   %....threadsafe.
|   3232: 25 1e 00 00 04 76 74 61 62 03 25 0b 00 86 50 01   %....vtab.%...P.
|   3248: 08 08 08 09 08 17 8d 12 30 20 38 33 37 e3 aa e0   ........0 837...
|   3264: 12 d1 06 00 01 06 00 01 06 00 1f 03 00 01 03 00   ................
|   3280: 01 03 00 00 08 32 30 31 36 30 36 30 49 09 01 07   .....2016060I...
|   3296: 00 01 07 00 01 07 00 00 01 34 09 01 05 00 01 05   .........4......
|   3312: 00 01 05 00 00 01 35 09 01 04 00 01 04 00 01 04   ......5.........
|   3328: 00 01 07 30 30 30 30 30 30 30 09 1c 04 00 01 04   ...0000000......
|   3344: 00 01 04 00 00 06 62 69 6e 61 72 79 3c 03 01 02   ......binary<...
|   3360: 02 00 03 01 02 02 00 03 01 02 02 00 03 01 02 02   ................
|   3376: 00 03 01 02 02 00 03 01 02 02 00 03 01 02 02 00   ................
|   3392: 03 01 02 02 00 03 01 02 02 00 03 01 02 02 00 03   ................
|   3408: 01 02 02 00 03 01 02 02 00 00 08 63 6f 6d 70 69   ...........compi
|   3424: 6c 65 72 09 01 02 00 01 02 00 01 02 00 00 06 64   ler............d
|   3440: 62 73 74 61 74 09 07 03 00 01 03 00 01 03 00 01   bstat...........
|   3456: 04 65 62 75 67 09 04 01 f0 01 02 00 01 02 00 00   .ebug...........
|   3472: 06 65 6e 61 62 6c 65 3f 07 02 00 01 02 00 01 02   .enable?........
|   3488: 00 01 02 00 01 02 00 01 02 00 01 02 00 01 02 00   ................
|   3504: 01 02 00 01 02 00 01 02 00 01 02 00 01 02 00 01   ................
|   3520: 02 00 01 02 00 01 02 00 01 02 00 01 02 00 01 02   ................
|   3536: 00 01 02 00 01 02 00 01 08 78 74 65 6e 73 69 6f   .........xtensio
|   3552: 6e 09 1f 04 00 01 04 00 01 04 00 00 04 66 74 73   n............fts
|   3568: 34 09 0a 03 f3 01 03 00 01 03 00 19 01 35 09 0d   4............5..
|   3584: 03 00 01 03 00 01 03 00 00 03 67 63 63 09 01 03   ..........gcc...
|   3600: 00 01 03 00 01 03 00 01 06 65 6f 70 6f 6c 79 09   .........eopoly.
|   3616: 10 03 00 01 03 00 01 03 00 00 05 6a 73 6f 6e 31   ...........json1
|   3632: 09 13 03 00 01 03 00 00 f3 00 00 04 6c 6f 61 64   ............load
|   3648: 09 1f 03 00 01 03 00 01 03 00 00 03 6d 61 78 09   ............max.
|   3664: 1c 02 00 01 02 00 01 02 00 01 05 65 6d 6f 72 79   ...........emory
|   3680: 09 1c 03 00 01 03 00 01 03 00 03 04 73 79 73 35   ............sys5
|   3696: 09 16 03 00 01 03 00 01 03 00 00 06 6e 6f 63 61   ............noca
|   3712: 73 65 3c 02 01 02 02 00 03 01 02 02 00 03 01 02   se<.............
|   3728: 02 00 03 01 02 02 00 03 01 02 02 00 03 01 02 02   ................
|   3744: 00 03 01 02 02 00 03 01 02 02 00 03 01 02 02 00   ................
|   3760: 03 01 02 02 00 03 01 02 02 00 46 01 02 02 00 00   ..........F.....
|   3776: 04 6f 6d 69 74 09 1f 02 00 01 02 00 01 02 00 00   .omit...........
|   3792: 05 72 74 72 64 65 09 19 03 00 01 03 00 01 03 00   .rtrde..........
|   3808: 03 02 69 6d 3c 01 01 02 02 00 03 01 02 02 00 03   ..im<...........
|   3824: 01 02 02 00 03 01 02 01 ff 03 01 02 02 00 03 01   ................
|   3840: 02 02 00 03 01 02 02 00 03 01 02 02 00 03 01 02   ................
|   3856: 02 00 03 01 02 02 00 03 01 02 02 00 03 01 02 02   ................
|   3872: 00 00 0a 74 68 72 65 61 64 73 61 66 65 09 22 02   ...threadsafe...
|   3888: 00 01 02 00 01 02 00 00 04 76 74 61 62 09 07 04   .........vtab...
|   3904: 00 01 04 00 01 04 00 00 01 78 b4 01 01 01 01 02   .........x......
|   3920: 00 01 01 01 02 00 01 01 01 02 00 01 01 01 02 00   ................
|   3936: 01 01 01 02 00 01 01 01 02 00 01 01 01 02 00 01   ................
|   3952: 01 01 02 00 01 01 01 02 00 01 01 01 02 00 01 01   ................
|   3968: 01 02 00 01 01 01 02 00 01 01 01 02 00 01 01 01   ................
|   3984: 02 00 01 01 01 02 00 01 01 01 02 00 01 01 01 02   ................
|   4000: 00 01 01 01 02 00 01 01 01 02 00 01 01 01 02 00   ................
|   4016: 01 01 01 02 00 01 01 01 02 00 01 01 01 02 00 01   ................
|   4032: 01 01 02 00 01 01 01 02 00 01 01 01 02 00 01 01   ................
|   4048: 01 02 00 01 01 01 02 00 01 01 01 02 00 01 01 01   ................
|   4064: 02 00 01 01 01 02 00 01 01 01 02 00 01 01 02 02   ................
|   4080: 00 01 01 01 02 00 01 01 01 02 00 01 01 01 02 00   ................
| page 6 offset 20480
|      0: 0a 00 00 00 02 0f f5 00 0f fb 0f f5 00 00 00 00   ................
|   4080: 00 00 00 00 00 05 04 08 09 01 02 04 04 08 09 09   ................
| page 7 offset 24576
|      0: 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ................
|   4016: 00 00 00 00 00 00 00 00 0d 05 02 23 61 75 74 6f   ...........#auto
|   4032: 6d 65 71 97 65 3d 35 0d 04 02 23 6d 65 72 67 65   meq.e=5...#merge
|   4048: 3d 31 30 30 2c 38 11 03 02 2b 69 6e 74 65 67 72   =100,8...+integr
|   4064: 69 74 79 00 00 00 00 00 00 00 00 00 00 00 00 00   ity.............
| end crash-670b15f2955a36.db



  PRAGMA writable_schema = 1;
  SELECT 'FyzLy'FROM t1 WHERE t1 MATCH 'j';

