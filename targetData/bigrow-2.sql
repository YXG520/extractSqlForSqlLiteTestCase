

    CREATE INDEX i1 ON t1(a)
  
SELECT b FROM t1 WHERE a=='$::big1'


    UPDATE t1 SET a=b, b=a
  
SELECT b FROM t1 WHERE a=='abc'


    UPDATE t1 SET a=b, b=a
  
SELECT b FROM t1 WHERE a=='$::big1'
