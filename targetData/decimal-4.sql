

  SELECT decimal_sum(val) FROM t3;



  SELECT decimal_sum(decimal_add(val,val||'e+10')) FROM t3;



  SELECT decimal_sum(decimal_add(val||'e+20',decimal_add(val,val||'e-20')))
    FROM t3;

