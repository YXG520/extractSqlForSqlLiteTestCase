

  CREATE TABLE t2(x,y);
  INSERT INTO t2 VALUES(1,2),(3,4),(5,6),(7,8);
  SELECT x, y FROM t2 WHERE x+5=5+x ORDER BY +x;



  SELECT x, y FROM t2
   WHERE x+counter1('hello')=counter1('hello')+x
   ORDER BY +x;



  SELECT x, y FROM t2
   WHERE x+counter2('hello')=$cvalue+x
   ORDER BY +x;

