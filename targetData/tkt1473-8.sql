

    SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 2 FROM t2 WHERE y=2
  


    SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 1 FROM t2 WHERE y=2
  


    SELECT (
      SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 2 FROM t2 WHERE y=2
    )
  


    SELECT (
      SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 1 FROM t2 WHERE y=2
    )
  


    SELECT EXISTS (
      SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 2 FROM t2 WHERE y=2
    )
  


    SELECT EXISTS (
      SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 1 FROM t2 WHERE y=2
    )
  


    SELECT (
      SELECT 1 FROM t2 WHERE x=0 INTERSECT SELECT 1 FROM t2 WHERE y=2
    )
  


    SELECT EXISTS (
      SELECT 1 FROM t2 WHERE x=1 INTERSECT SELECT 1 FROM t2 WHERE y=0
    )
  
