

  SELECT test_frombind(1,2,3,4);



  SELECT test_frombind(1,2,?,4);



  SELECT test_frombind(1,(?),4,?+7);



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a,b,c,e,f);
  INSERT INTO t1 VALUES(1,2.5,'xyz',x'e0c1b2a3',null);
  SELECT test_frombind(a,b,c,e,f,$xyz) FROM t1;



  SELECT test_frombind(a,b,c,e,f,$xyz+f) FROM t1;



  SELECT test_frombind(x.a,y.b,x.c,:123,y.e,x.f,$xyz+y.f) FROM t1 x, t1 y;

