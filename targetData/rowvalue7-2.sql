

  UPDATE t1 SET (c,d) = (SELECT x,y,z FROM t2 WHERE w=a);



  UPDATE t1 SET (b,c,d) = (SELECT x,y FROM t2 WHERE w=a);

