

  UPDATE t1 SET c='bellum' WHERE c='pax' RETURNING rowid, b, '|';



  SELECT *, '|' FROM t1;

