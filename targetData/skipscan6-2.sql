

  DROP INDEX ix;
  CREATE INDEX good on t1(bb, aa, dd DESC);
  CREATE INDEX bad on t1(aa, bb, cc,  dd DESC);
  DELETE FROM sqlite_stat1;
  DELETE FROM sqlite_stat4;
  INSERT INTO sqlite_stat1 VALUES('t1','good','2695116 299 264 2');
  INSERT INTO sqlite_stat1 VALUES('t1','bad','2695116 1347558 264 18 2');
  INSERT INTO sqlite_stat4 VALUES('t1','good','197030 196859 32 1','15086 15086 92511 92536','19 25 81644 92536',X'05010904031552977BD725BD22');
  INSERT INTO sqlite_stat4 VALUES('t1','good','14972 14687 1 1','289878 289878 299457 299457','199 244 267460 299457',X'050209040301344F7E569402C419');
  INSERT INTO sqlite_stat4 VALUES('t1','good','19600 19313 22 1','327127 327127 346222 346243','261 319 306884 346243',X'0502090403018A49503BC01EC577');
  INSERT INTO sqlite_stat4 VALUES('t1','good','25666 25047 15 1','352087 352087 372692 372706','266 327 325601 372706',X'050209040301914C2DD2E91F93CF');
  INSERT INTO sqlite_stat4 VALUES('t1','good','42392 42327 26 1','378657 378657 382547 382572','268 331 333529 382572',X'05020904030193533B2FE326ED48');
  INSERT INTO sqlite_stat4 VALUES('t1','good','24619 24513 11 1','457872 457872 461748 461758','286 358 399322 461758',X'050209040301A752B1557825EA7C');
  INSERT INTO sqlite_stat4 VALUES('t1','good','18969 18730 15 1','482491 482491 501105 501119','287 360 433605 501119',X'050209040301A8494AF3A41EC50C');
  INSERT INTO sqlite_stat4 VALUES('t1','good','119710 119603 1 1','576500 576500 598915 598915','404 505 519877 598915',X'05020904030247539A7A7912F617');
  INSERT INTO sqlite_stat4 VALUES('t1','good','11955 11946 1 1','889796 889796 898373 898373','938 1123 794694 898373',X'050209040304EF4DF9C4150BBB28');
  INSERT INTO sqlite_stat4 VALUES('t1','good','57197 57138 24 1','1129865 1129865 1151492 1151515','1967 2273 1027048 1151515',X'05020904030988533510BC26E20A');
  INSERT INTO sqlite_stat4 VALUES('t1','good','3609 3543 1 1','1196265 1196265 1197831 1197831','2002 2313 1070108 1197831',X'050209040309B050E95CD718D94D');
  INSERT INTO sqlite_stat4 VALUES('t1','good','25391 25365 13 1','1309378 1309378 1315567 1315579','2561 2936 1178358 1315579',X'05020904030C5F53DF9E13283570');
  INSERT INTO sqlite_stat4 VALUES('t1','good','45232 45180 17 1','1334769 1334769 1337946 1337962','2562 2938 1198998 1337962',X'05020904030C60541CACEE28BCAC');
  INSERT INTO sqlite_stat4 VALUES('t1','good','5496 5493 1 1','1495882 1495882 1497289 1497289','3043 3479 1348695 1497289',X'05020904030E99515C62AD0F0B34');
  INSERT INTO sqlite_stat4 VALUES('t1','good','26348 26139 17 1','1517381 1517381 1529990 1530006','3074 3519 1378320 1530006',X'05020904030EB95169453423D4EA');
  INSERT INTO sqlite_stat4 VALUES('t1','good','102927 102894 10 1','1547088 1547088 1649950 1649959','3109 3559 1494260 1649959',X'05020904030EE34D309F671FFA47');
  INSERT INTO sqlite_stat4 VALUES('t1','good','3602 3576 1 1','1793873 1793873 1796747 1796747','3601 4128 1630783 1796747',X'050209040311294FE88B432219B9');
  INSERT INTO sqlite_stat4 VALUES('t1','good','154 154 1 1','2096059 2096059 2096205 2096205','5037 5779 1893039 2096205',X'050209040317994EFF05A016DCED');
  INSERT INTO sqlite_stat4 VALUES('t1','good','68153 66574 60 1','2244039 2244039 2268892 2268951','5899 6749 2027553 2268951',X'05020904031B8A532DBC5A26D2BA');
  INSERT INTO sqlite_stat4 VALUES('t1','good','321 321 1 1','2395618 2395618 2395663 2395663','6609 7528 2118435 2395663',X'05020904031EFA54078EEE1E2D65');
  INSERT INTO sqlite_stat4 VALUES('t1','good','19449 19440 22 1','2407769 2407769 2426049 2426070','6718 7651 2146904 2426070',X'05020904031F7450E6118C2336BD');
  INSERT INTO sqlite_stat4 VALUES('t1','good','18383 18321 56 1','2539949 2539949 2551080 2551135','7838 8897 2245459 2551135',X'050209040324A752EA2E1E2642B2');
  INSERT INTO sqlite_stat4 VALUES('t1','good','22479 22384 60 1','2558332 2558332 2565233 2565292','7839 8899 2251202 2565292',X'050209040324A853926538279A5F');
  INSERT INTO sqlite_stat4 VALUES('t1','good','18771 18699 63 1','2580811 2580811 2596914 2596976','7840 8901 2263572 2596976',X'050209040324A9526C1DE9256E72');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 196859 196859 32 1','0 15043 15043 92468 92499','0 19 286 81846 92499',X'0609010804031552977BD725BD28');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 14687 161 1 1','0 289067 299306 299457 299457','0 199 6772 273984 299457',X'060902020403013406314D67456415B819');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 19313 19308 22 1','0 325815 325815 343725 343746','0 261 9545 315009 343746',X'060902080403018A49B0A3AD1ED931');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 25047 9051 15 1','0 350443 350443 356590 356604','0 266 9795 325519 356604',X'06090208040301914C2DD2E91F93CF');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 42327 9906 7 1','0 376381 376381 380291 380297','0 268 10100 344232 380297',X'06090208040301934BF672511F7ED3');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 24513 2237 1 1','0 455150 467779 470015 470015','0 286 10880 425401 470015',X'06090202040301A703464A28F2611EF1EE');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 18730 18724 15 1','0 479663 479663 498271 498285','0 287 10998 450793 498285',X'06090208040301A8494AF3A41EC50C');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 119603 47125 1 1','0 572425 572425 598915 598915','0 404 14230 546497 598915',X'06090208040302474FD1929A03194F');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 1454 1454 1 1','0 898346 898346 898373 898373','0 952 31165 827562 898373',X'06090208040304FD53F6A2A2097F64');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 57138 7069 1 1','0 1122389 1122389 1129457 1129457','0 1967 46801 1045943 1129457',X'06090208040309884BC4C52F1F6EB7');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 285 11 1 1','0 1197683 1197824 1197831 1197831','0 2033 50990 1112280 1197831',X'06090202040309D80346503FE2A9038E4F');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 25365 9773 1 1','0 1301013 1301013 1310785 1310785','0 2561 58806 1217877 1310785',X'0609020804030C5F4C8F88AB0AF2A2');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 45180 7222 1 1','0 1326378 1326378 1333599 1333599','0 2562 59921 1240187 1333599',X'0609020804030C604CAB75490B0351');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 8537 41 1 1','0 1496959 1497288 1497289 1497289','0 3050 68246 1394126 1497289',X'0609020204030EA0057F527459B0257C4B');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 26139 26131 17 1','0 1507977 1507977 1520578 1520594','0 3074 69188 1416111 1520594',X'0609020804030EB95169453423D4EA');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 102894 29678 1 1','0 1537421 1550467 1564894 1564894','0 3109 69669 1459820 1564894',X'0609020204030EE3183652A6ED3006EBCB');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 319 3 1 1','0 1796728 1796746 1796747 1796747','0 3650 86468 1682243 1796747',X'0609020204031163033550D0C41018C28D');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 127 127 1 1','0 2096194 2096194 2096205 2096205','0 5145 106437 1951535 2096205',X'060902080403180F53BB1AF727EE50');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 66574 5252 1 1','0 2230524 2265961 2271212 2271212','0 5899 114976 2085829 2271212',X'0609020204031B8A05195009976D223B90');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 19440 19440 1 1','0 2391680 2391680 2395663 2395663','0 6718 123714 2184781 2395663',X'0609020804031F7452E00A7B07431A');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 18321 2177 1 1','0 2522928 2523231 2525407 2525407','0 7838 139084 2299958 2525407',X'06090201040324A7475231103B1AA7B8');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 22384 1361 1 1','0 2541249 2544834 2546194 2546194','0 7839 139428 2308416 2546194',X'06090202040324A8011652323D4B1AA9EB');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','2677151 18699 855 1 1','0 2563633 2578178 2579032 2579032','0 7840 139947 2321671 2579032',X'06090202040324A9077452323D7D1052C5');
  INSERT INTO sqlite_stat4 VALUES('t1','bad','17965 1579 1579 1 1','2677151 2690666 2690666 2692244 2692244','1 9870 153959 2418294 2692244',X'060102080403021B8A4FE1AB84032B35');
  ANALYZE sqlite_master;



  EXPLAIN QUERY PLAN
  SELECT COUNT(*)
    FROM t1
   WHERE bb=21
     AND aa=1
     AND dd BETWEEN 1413833728 and 1413837331;
