
S

S

S

S

S

 SELECT * FROM t1 INDEXED BY i2 WHERE a = 'one' 

 SELECT * FROM t1 INDEXED BY i2 ORDER BY a 

 SELECT * FROM t1 INDEXED BY i1 WHERE a = 'one' 

 SELECT * FROM t1 INDEXED BY i1 ORDER BY a 

S

S

 SELECT * FROM t3 INDEXED BY sqlite_autoindex_t3_1 WHERE f = 10 

 SELECT * FROM t3 INDEXED BY sqlite_autoindex_t3_2 WHERE f = 10 
