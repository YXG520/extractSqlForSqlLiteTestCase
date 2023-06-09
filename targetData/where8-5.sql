

    CREATE TABLE tA(
      a, b, c, d, e, f, g, h, 
      i, j, k, l, m, n, o, p
    );
  

    SELECT * FROM tA WHERE
      a=1 AND b=2 AND c=3 AND d=4 AND e=5 AND f=6 AND g=7 AND h=8 AND
      i=1 AND j=2 AND k=3 AND l=4 AND m=5 AND n=6 AND o=7 AND
      (p = 1 OR p = 2 OR p = 3)
  


    SELECT * FROM tA WHERE
      a=1 AND b=2 AND c=3 AND d=4 AND e=5 AND f=6 AND g=7 AND h=8 AND
      i=1 AND j=2 AND k=3 AND l=4 AND m=5 AND
      (p = 1 OR p = 2 OR p = 3) AND n=6 AND o=7
  


    INSERT INTO tA VALUES(1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8); 
    CREATE UNIQUE INDEX tAI ON tA(p);
    CREATE TABLE tB(x);
    INSERT INTO tB VALUES('x');
  

    SELECT a, x FROM tA LEFT JOIN tB ON (
      a=1 AND b=2 AND c=3 AND d=4 AND e=5 AND f=6 AND g=7 AND h=8 AND
      i=1 AND j=2 AND k=3 AND l=4 AND m=5 AND n=6 AND o=7 AND
      (p = 1 OR p = 2 OR p = 3)
    )
  
