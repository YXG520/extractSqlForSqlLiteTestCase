



  SAVEPOINT one;
  DELETE FROM t1 WHERE t1 MATCH 'c*';
  SELECT matchinfo(t1,'pcx') IS NULL FROM t1 WHERE t1 MATCH 'f*e*';

