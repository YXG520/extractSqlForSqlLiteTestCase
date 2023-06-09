

  SELECT * FROM t1 WHERE a=55;



  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;



  SELECT * FROM t1 WHERE a IN (55,199,299);



  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;



  SELECT * FROM t1 WHERE (b,c)=(45,45);



  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

