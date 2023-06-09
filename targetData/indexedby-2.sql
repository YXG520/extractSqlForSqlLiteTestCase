
 SELECT * FROM t1 NOT INDEXED WHERE a = 'one' AND b = 'two'

 SELECT * FROM main.t1 NOT INDEXED WHERE a = 'one' AND b = 'two'

 SELECT * FROM t1 INDEXED BY i1 WHERE a = 'one' AND b = 'two'

 SELECT * FROM main.t1 INDEXED BY i1 WHERE a = 'one' AND b = 'two'

 SELECT * FROM t1 INDEXED BY i2 WHERE a = 'one' AND b = 'two'

 SELECT * FROM t1 INDEXED BY i3 WHERE a = 'one' AND b = 'two'

 SELECT b FROM t1 INDEXED BY i1 WHERE b = 'two' 

 SELECT * FROM t1 INDEXED BY i5 WHERE a = 'one' AND b = 'two'

 SELECT * FROM t1 INDEXED BY WHERE a = 'one' AND b = 'two'

 SELECT * FROM v1 INDEXED BY i1 WHERE a = 'one' 
