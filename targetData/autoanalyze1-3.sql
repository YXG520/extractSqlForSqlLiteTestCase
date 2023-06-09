

  SELECT * FROM t1 WHERE d=45;



  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;



  SELECT * FROM t1 WHERE d=45 AND a=45;



  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;



  SELECT * FROM t1 WHERE d=45 AND a IN (45,46);



  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

