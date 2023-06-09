

  CREATE TABLE link(aa INT, bb INT);
  CREATE INDEX link_f ON link(aa,bb);
  CREATE INDEX link_t ON link(bb,aa);
  INSERT INTO link(aa,bb) VALUES
    (1,3),
    (5,3),
    (7,1),
    (7,9),
    (9,9),
    (5,11),
    (11,7),
    (2,4),
    (4,6),
    (8,6);



  WITH RECURSIVE closure(x) AS (
     VALUES(1)
     UNION
     SELECT aa FROM closure, link WHERE link.bb=closure.x
     UNION
     SELECT bb FROM closure, link WHERE link.aa=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
     VALUES(1)
     UNION
     SELECT aa FROM link, closure WHERE link.bb=closure.x
     UNION
     SELECT bb FROM closure, link WHERE link.aa=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
     VALUES(1)
     UNION
     SELECT bb FROM closure, link WHERE link.aa=closure.x
     UNION
     SELECT aa FROM link, closure WHERE link.bb=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
     VALUES(1),(200),(300),(400)
     INTERSECT
     VALUES(1)
     UNION
     SELECT bb FROM closure, link WHERE link.aa=closure.x
     UNION
     SELECT aa FROM link, closure WHERE link.bb=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
     VALUES(1),(200),(300),(400)
     UNION ALL
     VALUES(2)
     UNION
     SELECT bb FROM closure, link WHERE link.aa=closure.x
     UNION
     SELECT aa FROM link, closure WHERE link.bb=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
     VALUES(1),(200),(300),(400)
     UNION ALL
     VALUES(2)
     UNION ALL
     SELECT bb FROM closure, link WHERE link.aa=closure.x
     UNION
     SELECT aa FROM link, closure WHERE link.bb=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
     VALUES(1),(200),(300),(400)
     UNION ALL
     VALUES(2)
     UNION
     SELECT bb FROM closure, link WHERE link.aa=closure.x
     UNION ALL
     SELECT aa FROM link, closure WHERE link.bb=closure.x
  )
  SELECT x FROM closure ORDER BY x;



  WITH RECURSIVE closure(x) AS (
    SELECT 1 AS x
    UNION
    SELECT aa FROM link JOIN closure ON bb=x
    UNION
    SELECT bb FROM link JOIN closure on aa=x
    ORDER BY x LIMIT 4
  )
  SELECT * FROM closure;



  WITH RECURSIVE closure(x) AS (
    SELECT 1 AS x
    UNION ALL
    SELECT 2
    UNION
    SELECT aa FROM link JOIN closure ON bb=x
    UNION
    SELECT bb FROM link JOIN closure on aa=x
    ORDER BY x LIMIT 4
  )
  SELECT * FROM closure;

