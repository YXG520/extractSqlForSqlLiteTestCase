

  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
     WITH v(m,n) AS (SELECT x,y FROM aux.t2) SELECT * FROM t1, v;
  END;



  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
     WITH v(m,n) AS (SELECT 5,?2) SELECT * FROM t1, v;
  END;

