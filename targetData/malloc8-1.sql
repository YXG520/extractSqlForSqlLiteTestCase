

  PRAGMA encoding='UTF-16';
  CREATE TABLE t1(a);
  INSERT INTO t1 
  VALUES('0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ');


  SELECT lower(a), upper(a), quote(a), trim(a), trim('x',a) FROM t1;

