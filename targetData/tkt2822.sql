CREATE TABLE t1(a, b, c);
    CREATE TABLE t2(a, b, c);

    INSERT INTO t1 VALUES(1, 3, 9);
    INSERT INTO t1 VALUES(3, 9, 27);
    INSERT INTO t1 VALUES(5, 15, 45);

    INSERT INTO t2 VALUES(2, 6, 18);
    INSERT INTO t2 VALUES(4, 12, 36);
    INSERT INTO t2 VALUES(6, 18, 54);
  
SELECT a, b, c FROM t1 UNION ALL SELECT a, b, c FROM t2 ORDER BY 1;
  
SELECT a, CAST (b AS TEXT), c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY 2;
  
SELECT a, b, c FROM t1 UNION ALL SELECT a, b, c FROM t2 ORDER BY a;
  
SELECT a, CAST (b AS TEXT) AS x, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY x;
  
SELECT t1.a, b, c FROM t1 UNION ALL SELECT t2.a, b, c FROM t2 ORDER BY a;
  
SELECT a, CAST (b AS TEXT) AS x, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY CAST (b AS TEXT);
  
SELECT t1.a, b, c FROM t1 UNION ALL SELECT t2.a, b, c FROM t2 ORDER BY t1.a;
  
SELECT a, b, c FROM t1 UNION ALL SELECT a AS x, b, c FROM t2 ORDER BY x;
  
SELECT a AS b, CAST (b AS TEXT) AS a, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY a;
  
SELECT a, b, c FROM t2 
      UNION ALL 
    SELECT a AS b, CAST (b AS TEXT) AS a, c FROM t1 
      ORDER BY a;
  
SELECT a, b, c FROM t1 UNION ALL SELECT a, b, c FROM t2 ORDER BY x
  
SELECT a, CAST (b AS TEXT) AS x, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY CAST (b AS INTEGER);
  
CREATE TABLE t3(a,b);
    INSERT INTO t3 VALUES(1,8);
    INSERT INTO t3 VALUES(9,2);

    SELECT a AS b FROM t3 ORDER BY b;
  
SELECT a AS b FROM t3 ORDER BY B;
  
SELECT a AS 'b' FROM t3 ORDER BY "B";
  
SELECT a AS "b" FROM t3 ORDER BY [B];
  
SELECT a AS b FROM t3 ORDER BY +b;
  
CREATE TABLE t6a(p,q);
    INSERT INTO t6a VALUES(1,8);
    INSERT INTO t6a VALUES(9,2);
    CREATE TABLE t6b(x,y);
    INSERT INTO t6b VALUES(1,7);
    INSERT INTO t6b VALUES(7,2);

    SELECT p, q FROM t6a UNION ALL SELECT x, y FROM t6b ORDER BY 1, 2
  
SELECT p PX, q QX FROM t6a UNION ALL SELECT x XX, y YX FROM t6b
    ORDER BY PX, YX
  
SELECT p PX, q QX FROM t6a UNION ALL SELECT x XX, y YX FROM t6b
    ORDER BY XX, QX
  
SELECT p PX, q QX FROM t6a UNION ALL SELECT x XX, y YX FROM t6b
    ORDER BY QX, XX
  
SELECT p PX, q QX FROM t6a UNION ALL SELECT x XX, y YX FROM t6b
    ORDER BY t6b.x, QX
  
SELECT p PX, q QX FROM t6a UNION ALL SELECT x XX, y YX FROM t6b
    ORDER BY t6a.q, XX
  
CREATE TABLE t7(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,
                    a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25);
  
SELECT * FROM t7 ORDER BY 0;
  
SELECT * FROM t7 ORDER BY 1, 0;
  
SELECT * FROM t7 ORDER BY 1, 26;
  
SELECT * FROM t7 ORDER BY 1, 65536;
  
SELECT * FROM t7 ORDER BY 1, 2, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 0;
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                             11,12,13,14,15,16,17,18,19, 0
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                             11,12,13,14,15,16,17,18,19, 20, 0
  
SELECT * FROM t7 ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                             11,12,13,14,15,16,17,18,19, 20, 21, 0
  
