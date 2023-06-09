

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(0), (2);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);


 select * from vt1 
0 2

 select * from vt1 WHERE a=0 
0

 select * from vt1 WHERE a=1 


 select * from vt1 WHERE a=1 OR a=0
0


  UPDATE t1 SET x=NULL WHERE x=2;


 select * from vt1 
0 {

}

 select * from vt1 WHERE a=0 
0

 select * from vt1 WHERE a=1 


 select * from vt1 WHERE a=1 OR a=0
0

 select * from vt1 WHERE a IN (2) 


 select * from vt1 WHERE a IN (0,1,2,3) 
0

 select * from vt1 WHERE a IN (0, NULL) 
0

 select * from vt1 WHERE a IN (NULL) 

