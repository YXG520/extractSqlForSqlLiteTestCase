

    CREATE TABLE t31(a,b); CREATE INDEX t31ab ON t31(a,b);
    CREATE TABLE t32(c,d); CREATE INDEX t32cd ON t32(c,d);
    CREATE TABLE t33(e,f); CREATE INDEX t33ef ON t33(e,f);
    CREATE TABLE t34(g,h); CREATE INDEX t34gh ON t34(g,h);
    
    INSERT INTO t31 VALUES(1,4), (2,3), (1,3);
    INSERT INTO t32 VALUES(4,5), (3,6), (3,7), (4,8);
    INSERT INTO t33 VALUES(5,9), (7,10), (6,11), (8,12), (8,13), (7,14);
    INSERT INTO t34 VALUES(11,20), (10,21), (12,22), (9,23), (13,24),
                          (14,25), (12,26);
    SELECT a||','||c||','||e||','||g FROM t31, t32, t33, t34
     WHERE c=b AND e=d AND g=f
     ORDER BY a ASC, c ASC, e DESC, g ASC;
  


    SELECT a||','||c||','||e||','||g FROM t31, t32, t33, t34
     WHERE c=b AND e=d AND g=f
     ORDER BY +a ASC, +c ASC, +e DESC, +g ASC;
  


    SELECT a||','||c||','||e||','||g FROM t31, t32, t33, t34
     WHERE c=b AND e=d AND g=f
     ORDER BY a ASC, c ASC, e ASC, g ASC;
  


    SELECT a||','||c||','||e||','||g FROM t31, t32, t33, t34
     WHERE c=b AND e=d AND g=f
     ORDER BY a ASC, c ASC, e ASC, g ASC;
  
