

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
  
