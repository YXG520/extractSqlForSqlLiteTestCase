

  WITH i(x) AS ( VALUES(1) UNION ALL SELECT x+1 FROM i)
  SELECT x FROM i LIMIT 10;



  WITH i(x) AS ( VALUES(1) UNION ALL SELECT x+1 FROM i ORDER BY 1)
  SELECT x FROM i LIMIT 10;



  CREATE TABLE edge(xfrom, xto, seq, PRIMARY KEY(xfrom, xto)) WITHOUT ROWID;
  INSERT INTO edge VALUES(0, 1, 10);
  INSERT INTO edge VALUES(1, 2, 20);
  INSERT INTO edge VALUES(0, 3, 30);
  INSERT INTO edge VALUES(2, 4, 40);
  INSERT INTO edge VALUES(3, 4, 40);
  INSERT INTO edge VALUES(2, 5, 50);
  INSERT INTO edge VALUES(3, 6, 60);
  INSERT INTO edge VALUES(5, 7, 70);
  INSERT INTO edge VALUES(3, 7, 70);
  INSERT INTO edge VALUES(4, 8, 80);
  INSERT INTO edge VALUES(7, 8, 80);
  INSERT INTO edge VALUES(8, 9, 90);
  
  WITH RECURSIVE
    ancest(id, mtime) AS
      (VALUES(0, 0)
       UNION
       SELECT edge.xto, edge.seq FROM edge, ancest
        WHERE edge.xfrom=ancest.id
        ORDER BY 2
      )
  SELECT * FROM ancest;



  WITH RECURSIVE
    ancest(id, mtime) AS
      (VALUES(0, 0)
       UNION ALL
       SELECT edge.xto, edge.seq FROM edge, ancest
        WHERE edge.xfrom=ancest.id
        ORDER BY 2
      )
  SELECT * FROM ancest;



  WITH RECURSIVE
    ancest(id, mtime) AS
      (VALUES(0, 0)
       UNION ALL
       SELECT edge.xto, edge.seq FROM edge, ancest
        WHERE edge.xfrom=ancest.id
        ORDER BY 2 LIMIT 4 OFFSET 2
      )
  SELECT * FROM ancest;



  WITH i(x) AS ( VALUES(1) UNION ALL SELECT x+1 FROM i LIMIT 5)
  SELECT x FROM i;



  WITH i(x) AS ( VALUES(1) UNION ALL SELECT (x+1)%10 FROM i)
  SELECT x FROM i LIMIT 20;



  WITH i(x) AS ( VALUES(1) UNION SELECT (x+1)%10 FROM i)
  SELECT x FROM i LIMIT 20;



  WITH i(x, y) AS ( VALUES(1) )
  SELECT * FROM i;



  WITH i(x) AS ( VALUES(1,2) )
  SELECT * FROM i;



  CREATE TABLE t5(a, b);
  WITH i(x) AS ( SELECT * FROM t5 )
  SELECT * FROM i;



  WITH i(x) AS ( SELECT 1, 2 UNION ALL SELECT 1 )
  SELECT * FROM i;



  WITH i(x) AS ( SELECT 1 UNION ALL SELECT 1, 2 )
  SELECT * FROM i;



  WITH i(x) AS ( SELECT 1 UNION ALL SELECT x+1, x*2 FROM i )
  SELECT * FROM i;



  WITH i(x) AS ( SELECT 1, 2 UNION SELECT x+1 FROM i )
  SELECT * FROM i;

