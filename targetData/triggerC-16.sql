

  SELECT raise(ABORT, 'msg') FROM sqlite_master 
  UNION SELECT 1 
  ORDER BY raise(IGNORE);



  SELECT count(*) FROM sqlite_master 
  GROUP BY raise(IGNORE) 
  HAVING raise(ABORT, 'msg');

