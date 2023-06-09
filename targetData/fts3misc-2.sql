
CREATE VIRTUAL TABLE t2 USING fts3([join $cols ,])

    WITH data(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM data WHERE i<200
    )
    INSERT INTO t2(c198, c199) SELECT v1(i), v2(i) FROM data;
  


  SELECT rowid FROM t2 WHERE t2 MATCH '"a b c"'



  SELECT rowid FROM t2 WHERE t2 MATCH '"g h i"'



  SELECT rowid FROM t2 WHERE t2 MATCH '"i h"'



  SELECT rowid FROM t2 WHERE t2 MATCH '"f e"'



  SELECT rowid FROM t2 WHERE t2 MATCH '"e f"'



  SELECT rowid FROM t2 WHERE t2 MATCH 'e' AND rowid BETWEEN NULL AND 45;



  SELECT rowid FROM t2 WHERE t2 MATCH 'e' AND rowid BETWEEN 11.5 AND 48.2;



  SELECT rowid FROM t2 WHERE t2 MATCH 'e' AND rowid BETWEEN '11.5' AND '48.2';

