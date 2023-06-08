CREATE TABLE t1(x);

SELECT 'abc' FROM ( SELECT 'xyz' FROM t1 WHERE (SELECT 1) )
  
1
1
0
SELECT instr (x'00', zeroblob(1)) 
SELECT instr (zeroblob(1), x'00') 
