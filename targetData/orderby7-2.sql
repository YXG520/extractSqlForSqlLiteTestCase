

  SELECT DISTINCT t1.x
    FROM fts, t1
   WHERE fts.rowid=11
     AND content=x
   ORDER BY fts.rowid;



  SELECT DISTINCT t1.*
    FROM fts, t1
   WHERE fts.rowid=11
     AND content=x
   ORDER BY fts.rowid;



  SELECT DISTINCT t1.*
    FROM fts, t1
   WHERE fts.rowid=11
     AND content=x
   ORDER BY t1.y

