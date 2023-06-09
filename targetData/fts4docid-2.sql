
 SELECT docid FROM t1 WHERE docid = 5 
5

 SELECT docid FROM t1 WHERE docid = '5' 
5

 SELECT docid FROM t1 WHERE docid = +5 
5

 SELECT docid FROM t1 WHERE docid = +'5' 
5

 SELECT docid FROM t1 WHERE docid < 5 
0 1 2 3 4

 SELECT docid FROM t1 WHERE docid < '5' 
0 1 2 3 4

 SELECT rowid FROM t1 WHERE rowid = 5 
5

 SELECT rowid FROM t1 WHERE rowid = '5' 
5

 SELECT rowid FROM t1 WHERE rowid = +5 
5

 SELECT rowid FROM t1 WHERE rowid = +'5' 
5

 SELECT rowid FROM t1 WHERE rowid < 5 
0 1 2 3 4

 SELECT rowid FROM t1 WHERE rowid < '5' 
0 1 2 3 4
