

  UPDATE t SET x='1.0';
  SELECT typeof(x), typeof(y) FROM t WHERE 1=x+0 AND y=='1';



  SELECT typeof(x), typeof(y) FROM t WHERE 1=x-0 AND y=='1';



  SELECT typeof(x), typeof(y) FROM t WHERE 1=x*1 AND y=='1';



  SELECT typeof(x), typeof(y) FROM t WHERE 1=x/1 AND y=='1';



  SELECT typeof(x), typeof(y) FROM t WHERE 1=x%4 AND y=='1';

