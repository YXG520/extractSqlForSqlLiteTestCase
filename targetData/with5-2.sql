

  CREATE TABLE linkA(aa1,aa2);
  INSERT INTO linkA(aa1,aa2) VALUES(1,3),(5,7),(9,11);
  CREATE TABLE linkB(bb1,bb2);
  INSERT INTO linkB(bb1,bb2) VALUES(7,9),(11,13),(3,5);
  CREATE TABLE linkC(cc1,cc2);
  INSERT INTO linkC(cc1,cc2) VALUES(1,2),(2,4),(6,8);
  CREATE TABLE linkD(dd1,dd2);
  INSERT INTO linkD(dd1,dd2) VALUES(4,6),(100,110);



  WITH RECURSIVE closure(x) AS (
    VALUES(1)
    UNION ALL
    SELECT aa2 FROM linkA JOIN closure ON x=aa1
    UNION ALL
    SELECT bb2 FROM linkB JOIN closure ON x=bb1
    UNION ALL
    SELECT cc2 FROM linkC JOIN closure ON x=cc1
    UNION ALL
    SELECT dd2 FROM linkD JOIN closure ON x=dd1
  )
  SELECT x FROM closure ORDER BY +x;



  CREATE TABLE linkA_ipk(aa1 INTEGER PRIMARY KEY,aa2);
  INSERT INTO linkA_ipk(aa1,aa2) SELECT aa1, aa2 FROM linkA;
  CREATE TABLE linkB_ipk(bb1 INTEGER PRIMARY KEY,bb2);
  INSERT INTO linkB_ipk(bb1,bb2) SELECT bb1, bb2 FROM linkB;
  CREATE TABLE linkC_ipk(cc1 INTEGER PRIMARY KEY,cc2);
  INSERT INTO linkC_ipk(cc1,cc2) SELECT cc1, cc2 FROM linkC;
  CREATE TABLE linkD_ipk(dd1 INTEGER PRIMARY KEY,dd2);
  INSERT INTO linkD_ipk(dd1,dd2) SELECT dd1, dd2 FROM linkD;
  WITH RECURSIVE closure(x) AS (
    VALUES(1)
    UNION ALL
    SELECT aa2 FROM linkA_ipk JOIN closure ON x=aa1
    UNION ALL
    SELECT bb2 FROM linkB_ipk JOIN closure ON x=bb1
    UNION ALL
    SELECT cc2 FROM linkC_ipk JOIN closure ON x=cc1
    UNION ALL
    SELECT dd2 FROM linkD_ipk JOIN closure ON x=dd1
  )
  SELECT x FROM closure ORDER BY +x;

