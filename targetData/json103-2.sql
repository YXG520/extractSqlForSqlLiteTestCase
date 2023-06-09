

  SELECT json_group_object(c,a) FROM t1 WHERE a<0 AND typeof(a)!='blob';



  SELECT json_group_object(c,a) FROM t1;



  SELECT json_group_object(c,a) FROM t1
   WHERE rowid BETWEEN 31 AND 39 AND rowid%2==1;



  SELECT b, json_group_object(c,a) FROM t1
   WHERE rowid<7 GROUP BY b ORDER BY b;

