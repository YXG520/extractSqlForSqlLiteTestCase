

    DELETE FROM t3;
    DELETE FROM t4;
    INSERT INTO t3 VALUES(1,2);
    INSERT INTO t4 VALUES(3,4);
    SELECT * FROM t3, t4;
  


    SELECT * FROM t3, t4;
  


    SELECT * FROM t3, t4;
  


    SELECT t3.*, t4.b FROM t3, t4;
  


    SELECT "t3".*, t4.b FROM t3, t4;
  


    SELECT t3.*, t4.b FROM t3, t4;
  


    SELECT x.*, y.b FROM t3 AS x, t4 AS y;
  


    SELECT t3.b, t4.* FROM t3, t4;
  


    SELECT t3.b, t4.* FROM t3, t4;
  


    SELECT x.b, y.* FROM t3 AS x, t4 AS y;
  


    SELECT t5.* FROM t3, t4;
  


    SELECT t3.* FROM t3 AS x, t4;
  


      SELECT t3.* FROM t3, (SELECT max(a), max(b) FROM t4)
    


      SELECT t3.* FROM (SELECT max(a), max(b) FROM t4), t3
    


      SELECT * FROM t3, (SELECT max(a), max(b) FROM t4) AS 'tx'
    


      SELECT y.*, t3.* FROM t3, (SELECT max(a), max(b) FROM t4) AS y
    


    SELECT y.* FROM t3 as y, t4 as z
  
