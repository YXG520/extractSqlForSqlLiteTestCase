

    INSERT INTO t1 VALUES(1, NULL, NULL, NULL, NULL);
    INSERT INTO t1 VALUES(2, 2, 2, 2, 2);
    INSERT INTO t1 VALUES(3, 3, 3, 3, 3);
    INSERT INTO t1 VALUES(4, 2.5, 2.5, 2.5, 2.5);
    INSERT INTO t1 VALUES(5, -5, -5, -5, -5);
    INSERT INTO t1 VALUES(6, 'six', 'six', 'six', 'six');
    INSERT INTO t1 VALUES(7, x'77', x'77', x'77', x'77');
    INSERT INTO t1 VALUES(8, 'eight', 'eight', 'eight', 'eight');
    INSERT INTO t1 VALUES(9, x'7979', x'7979', x'7979', x'7979');
    SELECT count(*) FROM t1;
  


    SELECT i FROM t1 ORDER BY a;
  


    SELECT i FROM t1 ORDER BY a DESC;
  


    SELECT i FROM t1 WHERE a<=x'7979';
  


    SELECT i FROM t1 WHERE a>-99;
  
