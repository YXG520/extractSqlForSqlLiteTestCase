

  DELETE FROM t1 WHERE c='bellum' RETURNING rowid, *, '|';



  SELECT *, '|' FROM t1;

