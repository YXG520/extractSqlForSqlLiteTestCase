CREATE TABLE t1(a);                 
  CREATE TABLE t2(d);                 

SELECT a = ( SELECT d FROM (SELECT d FROM t2) ) FROM t1 
  
SELECT hex ( unhex('ABCDEF') );
  
