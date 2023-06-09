

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  CREATE TABLE t3(e, f);



#   ATTACH 'test.db2' AS aux;
#   CREATE TABLE aux.t4(x);
#   INSERT INTO aux.t4 VALUES(5);
# 
#   CREATE TRIGGER tr1 AFTER INSERT ON t1 WHEN new.a IN (SELECT x FROM aux.t4)
#   BEGIN
#     SELECT 1;
#   END;
# 

 INSERT INTO t1 VALUES(1,1); 

 INSERT INTO t1 VALUES(5,5); 
drop trigger tr1
