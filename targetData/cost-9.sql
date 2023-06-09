

  CREATE TABLE t1(
    a,b,c,d,e, f,g,h,i,j,
    k,l,m,n,o, p,q,r,s,t
  );
  CREATE INDEX i1 ON t1(k,l,m,n,o,p,q,r,s,t);


 INSERT INTO t1 DEFAULT VALUES 

    ANALYZE;
    CREATE INDEX i2 ON t1(a,b,c,d,e,f,g,h,i,j);
  
SELECT * FROM t1 WHERE likelihood(k=?, $p1) AND $w
SELECT * FROM t1 WHERE likelihood(k=?, $p2) AND $w

/INDEX i1/

/INDEX i2/
