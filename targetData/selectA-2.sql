

    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY a,b,c
  


    SELECT t1.a, t1.b, t1.c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY t1.a, t1.b, t1.c
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY a DESC,b,c
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY a,c,b
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY b,a,c
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY b COLLATE NOCASE,a,c
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY b COLLATE NOCASE DESC,a,c
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY c,b,a
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY c,a,b
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY c DESC,a,b
  


    SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
    ORDER BY c COLLATE BINARY DESC,a,b
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY a,b,c
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY a DESC,b,c
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY a,c,b
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY b,a,c
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY b COLLATE NOCASE,a,c
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY b COLLATE NOCASE DESC,a,c
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY c,b,a
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY c,a,b
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY c DESC,a,b
  


    SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
    ORDER BY c COLLATE BINARY DESC,a,b
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY a DESC,b,c
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY a,c,b
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY b,a,c
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY b COLLATE NOCASE,a,c
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY b COLLATE NOCASE DESC,a,c
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY c,b,a
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY c,a,b
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY c DESC,a,b
  


    SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
    ORDER BY c COLLATE BINARY DESC,a,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY a,b,c
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY a DESC,b,c
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY a,c,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY b,a,c
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY y COLLATE NOCASE,x,z
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY y COLLATE NOCASE DESC,x,z
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY c,b,a
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY c,a,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY c DESC,a,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
    ORDER BY z COLLATE BINARY DESC,x,y
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY a DESC
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY a DESC
  


    SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY a DESC
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY a DESC
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY a DESC
  


    SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY a DESC
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY b, a DESC
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY b
  


    SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY b DESC, c
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY b, c DESC, a
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY b COLLATE NOCASE
  


    SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY b
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY c, a DESC
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
    ORDER BY c
  


    SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY c COLLATE BINARY, b DESC, c, a, b, c, a, b, c
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY c DESC, a
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY c COLLATE NOCASE
  


    SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
    ORDER BY c
  


    SELECT a,b,c FROM t3 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
    ORDER BY c COLLATE NOCASE
  


    SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t3
    ORDER BY c
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t3 WHERE b<'d'
    ORDER BY c DESC, a
  


    SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT b,c,a FROM t3
    ORDER BY c DESC, a
  


    SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT b,c,a FROM t3
    ORDER BY c COLLATE NOCASE
  


    SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT b,c,a FROM t3
    ORDER BY c
  


    SELECT a,b,c FROM t1 WHERE b<'d'
    INTERSECT SELECT a,b,c FROM t1
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT b,c,a FROM t3
    INTERSECT SELECT a,b,c FROM t1
    EXCEPT SELECT x,y,z FROM t2
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT y,x,z FROM t2
    INTERSECT SELECT a,b,c FROM t1
    EXCEPT SELECT c,b,a FROM t3
    ORDER BY c
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY a,b,c
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY a DESC,b,c
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY a,c,b
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY b,a,c
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY b COLLATE NOCASE,a,c
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY b COLLATE NOCASE DESC,a,c
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY c,b,a
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY c,a,b
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY c DESC,a,b
  


    SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
    ORDER BY c COLLATE BINARY DESC,a,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY a,b,c
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY a DESC,b,c
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY a,c,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY b,a,c
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY y COLLATE NOCASE,x,z
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY y COLLATE NOCASE DESC,x,z
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY c,b,a
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY c,a,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY c DESC,a,b
  


    SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
    ORDER BY z COLLATE BINARY DESC,x,y
  


    SELECT x,y,z FROM t2
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT c,b,a FROM t1
    UNION SELECT a,b,c FROM t3
    INTERSECT SELECT a,b,c FROM t3
    EXCEPT SELECT c,b,a FROM t1
    UNION SELECT a,b,c FROM t3
    ORDER BY y COLLATE NOCASE DESC,x,z
  


    SELECT upper((SELECT c FROM t1 UNION SELECT z FROM t2 ORDER BY 1));
  


    SELECT lower((SELECT c FROM t1 UNION ALL SELECT z FROM t2 ORDER BY 1));
  


    SELECT lower((SELECT c FROM t1 INTERSECT SELECT z FROM t2 ORDER BY 1));
  


    SELECT lower((SELECT z FROM t2 EXCEPT SELECT c FROM t1 ORDER BY 1));
  
