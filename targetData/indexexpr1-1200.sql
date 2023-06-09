

  CREATE INDEX t10_ab ON t10(a+b);



  SELECT a+b, c+d FROM t10 ORDER BY a+b, c+d;



  CREATE INDEX t10_abcd ON t10(a+b,c+d);



  SELECT a+b, c+d FROM t10 ORDER BY a+b, c+d;

